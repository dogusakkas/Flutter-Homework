import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future <void> main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   runApp(uye_ol());
}


class uye_ol extends StatelessWidget {
  const uye_ol({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  KayitOl(){
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: t1.text, password: t2.text)
        .whenComplete(() => Fluttertoast.showToast(
        msg: "Üye Kaydınız oluşturuldu",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    ));
  }
  
  /*Ekle(){
    FirebaseFirestore.instance
        .collection("Numaralar")
        .doc(t1.text)
        .set({'baslik': t1.text, 'icerik': t2.text})
        .whenComplete(() => Fluttertoast.showToast(
        msg: "Üye Kaydınız oluşturuldu",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    ));
  }

  Guncelle(){
    FirebaseFirestore.instance
        .collection("Numaralar")
        .doc(t1.text)
        .update({'baslik': t1.text, 'icerik': t2.text})
        .whenComplete(() => Fluttertoast.showToast(
        msg: "Bilgileriniz Güncellendi",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    ));
  }

  Sil(){
    FirebaseFirestore.instance
        .collection("Numaralar")
        .doc(t1.text)
        .delete()
        .whenComplete(() => Fluttertoast.showToast(
        msg: "Üyeliğiniz İptal Edilmiştir.",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    ));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Column(
          children: [
            Container(margin: EdgeInsets.all(45.0),child:TextFormField(controller: t1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E posta adresinizi giriniz : ',
              ),
            ),),


            Container(margin: EdgeInsets.all(45.0),child:TextFormField(controller: t2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Şifrenizi Giriniz : ',
              ),
            ),),


            Row(children:
            [
              Container(margin: EdgeInsets.only(left:150.0),child:RaisedButton(child: Text("Üye Ol"),onPressed: KayitOl)),
              /*Container(margin: EdgeInsets.all(22.0),child:RaisedButton(child: Text("Güncelle"),onPressed: Guncelle)),
              Container(margin: EdgeInsets.all(22.0),child:RaisedButton(child: Text("Sil"),onPressed: Sil)),*/


            ],),
          ],
        ),),
      ),
    );
  }
}

