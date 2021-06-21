import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/ana_sayfa.dart';

class hakkinda extends StatefulWidget{
  @override
  _hakkindaState createState() => _hakkindaState();
}

class _hakkindaState extends State<hakkinda>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173004042 numaralı Öğrenci, Doğuş AKKAŞ tarafından 19 Nisan 2021 günü yapılmıştır.'),
              Padding(
                  padding: const EdgeInsets.all(0.0),
                child: RaisedButton(
                    color: Colors.blue,
                    child: Text("Ana Sayfa",style: TextStyle(fontSize: 15),),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ana_sayfa()),
                      );
                    }
                )
              )],
          ),
        ),
      ),
    );
  }
}

