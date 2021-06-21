import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/ana_sayfa.dart';
import 'package:swipedetector/swipedetector.dart';

class gestures extends StatefulWidget {
  @override
  _gesturesState createState() => _gesturesState();
}

class _gesturesState extends State<gestures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bir Butona Basınız"),

      ),
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.only(left: 150,top: 40),
            child: new GestureDetector(
                child: new Text('Çift Tıklama'),
                onDoubleTap: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ana_sayfa()))
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 150,top: 70),
            child: new GestureDetector(
                child: new Text('Uzun Bas'),
                onLongPress: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ana_sayfa()))
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 150,top: 70),
            child:  SwipeDetector(
                child: new Text('Yukarı Kaydır'),
                onSwipeUp: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ana_sayfa()))
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 150,top: 70),
            child: new GestureDetector(
                child: new Text('İptal Etmek'),
                onTapCancel: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ana_sayfa()))
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 150,top: 70),
            child: new GestureDetector(
                child: new Text('Yukarı Uzun Bas'),
                onLongPressUp: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ana_sayfa()))
            ),
          ),


        ],


      ),

      
      
      

    );
  }
}
