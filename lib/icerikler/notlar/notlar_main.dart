import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/notlar/notlar_liste.dart';

void main() {

}

class notlar_main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: NotlarListeleri(),
      ),
    );
  }
}