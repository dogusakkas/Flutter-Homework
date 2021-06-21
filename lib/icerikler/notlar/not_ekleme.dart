import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/notlar/notlar_service.dart';
import 'notlar.dart';



  // ignore: must_be_immutable
class TodoPage extends StatelessWidget{
  TodoService todoService=TodoService.instance;

  final titleController = TextEditingController();
  final descController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final titleField = TextFormField(
      controller: titleController,
      decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
    final descriptionField = TextFormField(
      controller: descController,
      maxLines: 5,
      decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );

    final saveButton = FlatButton(onPressed: (){
      todoService.addTodo(Todo(id:null,title: titleController.text,description: descController.text,isDone: false))
          .then((value) => Navigator.pop(context));


    }, child: Text("Kaydet",style: TextStyle(color: Colors.white),
    ),
      color: Colors.blue,
    );

    return Scaffold(
      appBar: AppBar(title: Text("Yeni Notlar"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: titleField,
          ),

          SizedBox(height: 10,),

          Padding(padding: const EdgeInsets.all(8.0),
          child: descriptionField,
          ),
          saveButton,
        ],
      ),
    );
  }
}