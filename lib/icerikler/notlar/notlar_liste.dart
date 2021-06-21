import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/notlar/notlar_service.dart';

import 'not_ekleme.dart';
import 'notlar.dart';

class NotlarListeleri extends StatefulWidget {
  const NotlarListeleri({Key key}) : super(key: key);

  @override
  _NotlarListeleriState createState() => _NotlarListeleriState();
}

class _NotlarListeleriState extends State<NotlarListeleri> {

  TodoService service = TodoService.instance;


  List<Todo> todos=[];
  List<Todo> doneTodos=[];



  @override
  void initState() {

    loadData();
    super.initState();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notlar"),
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.check_box_outline_blank),),
        Tab(icon: Icon(Icons.check),),
      ],),
      ),
      body: TabBarView(children: [
        getTodoList(todos),
        getTodoList(doneTodos),
      ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (_) => TodoPage())).then((value) => loadData());
      },
      child: Icon(Icons.add),
      ),

    );
  }

  Widget getTodoList(List<Todo> todos) {
    return todos.length == 0 ?
        Center(child: Text('Not Defteri Boş')) :

      ListView.builder(itemCount:todos.length,itemBuilder: (context,index){
      return Card(
        child: ListTile(
          title: Text(todos[index].title),
          subtitle: Text(todos[index].description),
          trailing: Checkbox(onChanged: (value){
            todos[index].isDone=value;
            service.updateIsDone(todos[index]).then((value) => loadData());
          }, value:todos[index].isDone ,
          ),
        ),
      );
    },
    );
  }

  loadData(){
    service.getTodos(true).then((value){
      setState(() {
        todos = value;
      });
    });

    service.getTodos(false).then((value){
      setState(() {
        doneTodos = value;
      });
    });
  }
}
