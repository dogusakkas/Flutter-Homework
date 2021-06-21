import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class grafik_page extends StatefulWidget {
  final Widget child;

  grafik_page({Key key, this.child}) : super(key: key);

  _grafik_pageState createState() => _grafik_pageState();
}

class _grafik_pageState extends State<grafik_page> {
  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {


    var piedata = [
      new Task('Öğrenci', 60, Color(0xff3366cc)),
      new Task('Öğretmen', 20, Color(0xff990099)),
      new Task('Ziyaretçi', 7, Color(0xffff9900)),
      new Task('Çalışan', 5, Color(0xff109618)),
      new Task('Memur', 5, Color(0xfffdbe19)),
      new Task('Diğerleri', 3, Color(0xffdc3912)),
    ];


    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) => charts.ColorUtil.fromDartColor(task.colorval),
        id: 'kisi',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );



  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [Tab(icon: Icon(FontAwesomeIcons.chartPie)),],
            ),
            title: Text('Okul Grafiği'),
          ),
          body: TabBarView(
            children: [

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text('Okuldaki Günlük Kişi Sayısı',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Expanded(child: charts.PieChart(
                              _seriesPieData, animate: true, animationDuration: Duration(seconds: 5),
                              behaviors: [new charts.DatumLegend(
                                  outsideJustification: charts.OutsideJustification.endDrawArea,
                                  horizontalFirst: false, desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                entryTextStyle: charts.TextStyleSpec(
                                      color: charts.MaterialPalette.purple.shadeDefault,
                                      fontFamily: 'Georgia', fontSize: 11),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 100,
                                  arcRendererDecorators: [
                                    new charts.ArcLabelDecorator(
                                        labelPosition: charts.ArcLabelPosition.inside)
                                  ])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}


class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
