import 'package:flutter/material.dart';

class onay_takip extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),

      home: Scaffold(
        appBar: AppBar(title: Text('Onay Takip'),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context){
  return ListView(
    children: ListTile.divideTiles(context: context,
    tiles: [
      ListTile(
        title: Text('Bilgi Ekonomisi'),
        trailing: CircleAvatar(
          backgroundImage: AssetImage('images/tik1.png'),
          backgroundColor: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Bilgi Yönetimi ve Öğrenen Örgütler'),
        trailing: CircleAvatar(
          backgroundImage: AssetImage('images/tik1.png'),
          backgroundColor: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Lisans Bitirme Projesi ||'),
        trailing: CircleAvatar(
          backgroundImage: AssetImage('images/tik1.png'),
          backgroundColor: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Mobil Programlama'),
        trailing: CircleAvatar(
          backgroundImage: AssetImage('images/tik1.png'),
          backgroundColor: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Stratejik Yönetim'),
        trailing: CircleAvatar(
          backgroundImage: AssetImage('images/tik1.png'),
          backgroundColor: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Yapay Zeka'),
        trailing: CircleAvatar(
          backgroundImage: AssetImage('images/tik1.png'),
          backgroundColor: Colors.white,
        ),
      )
    ]
    ).toList()
  );
}