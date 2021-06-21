import 'dart:io'; // exit(0) ile gelen kütüphane
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // MaterialApp
import 'package:flutter_app/panel/uye_ol.dart';
import 'giris/ilk_sayfa.dart';


Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: StudentsApp(),
  )); // İkinci sayfa kullanabilmek için verilen komut
}

class StudentsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentsApp(
    );
  }
}

class _StudentsApp extends State<StudentsApp> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  girisYap(){
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: t1.text, password: t2.text)
        .then((kullanici) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ilk_sayfa()
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // Debug yazısını kaldırma
        home: Scaffold(
          appBar: AppBar(
            title: Text('Selçuk Üniversitesi'),
          ),

          body:  Column(

            children: [

              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/selcuk_logo2.png'),
                    backgroundColor: Colors.white,
                  )),


              Card(
                child: Column(children: <Widget>[
                  Text('Öğrenci Girişi'),
                  TextFormField(
                    controller: t1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E posta adresinizi giriniz : ',
                    ),
                  )
                ]),
              ),


              Card(
                child: Column(children: <Widget>[
                  TextFormField(
                    controller: t2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şifrenizi Giriniz',
                    ),
                  ),
                ]),

              ),


              Container(
                margin: EdgeInsets.all(8.0),

                child:
                RaisedButton(child: Text("Giriş Yap"),onPressed: girisYap),
              ),

              Container(
                margin: EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => uye_ol()),
                    );
                  },
                  child: Text('ÜYE OL'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    exit(0);
                  },
                  child: Text('ÇIKIŞ'),
                ),
              )
            ],
          ),
        ));
  }
}
