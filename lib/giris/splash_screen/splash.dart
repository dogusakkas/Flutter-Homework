import 'package:flutter/material.dart';
import '../../main.dart';

void main() {
  runApp((MaterialApp(home: splash_screen())));
}

class splash_screen extends StatefulWidget {

  @override
  _splash_screenState createState() => _splash_screenState();
}



class _splash_screenState extends State<splash_screen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5),
            (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>StudentsApp()));
        }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/splash.jpg"),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
