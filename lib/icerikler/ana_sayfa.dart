import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/dosya_islemleri.dart';
import 'package:flutter_app/icerikler/gestures.dart';
import 'package:flutter_app/icerikler/grafik_page.dart';
import 'package:flutter_app/icerikler/hava_durumu/yukleme_bolumu.dart';
import 'package:flutter_app/icerikler/onay_takip.dart';
import 'dosya_islemleri.dart';
import 'notlar/notlar_main.dart';
import 'sinav_tarihleri.dart';
import 'duyuru.dart';
import 'not_durumu.dart';
import 'yardim.dart';

class ana_sayfa extends StatefulWidget {
  @override
  _ana_sayfaState createState() => _ana_sayfaState();
}

class _ana_sayfaState extends State<ana_sayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hoş Geldiniz"),
        ),
        body: BodyLayout());
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(children: <Widget>[
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/help.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Yardım'),
      subtitle: Text('0332 241 00 41'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => yardim()),
        );
      },
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/duyuru.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Duyuru'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => duyuru()),
        );
      },
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/onay_takip.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Onay Takip'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onay_takip()),
        );
      },
    ),
    ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/menu.png'),
          backgroundColor: Colors.white,
        ),
        title: Text('Son Yıl Notları')),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/notlar.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Not Durumu'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => not_durumu()),
        );
      },
    ),
    ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/transkript.png'),
          backgroundColor: Colors.white,
        ),
        title: Text('Transkript')),
    ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/harc_durumu.png'),
          backgroundColor: Colors.white,
        ),
        title: Text('Harç Durumu')),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/exam.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Sınav Tarihleri'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sinav_tarihleri()),
        );
      },
    ),
    ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/distance_education.png'),
          backgroundColor: Colors.white,
        ),
        title: Text('Uzaktan Eğitim'),
        subtitle: Text('uzaktanogrenme1.selcuk.edu.tr')
    ),

    ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/weather.png'),
          backgroundColor: Colors.white,
        ),
        title: Text('Hava Durumu'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoadingScreen()),
        );
      },
    ),

    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/note.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Notlar'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => notlar_main()),
        );
      },
    ),



    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/graph.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Grafik'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => grafik_page()),
        );
      },
    ),


    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/push.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Etkileşim - Gesture'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gestures()),
        );
      },
    ),

    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/folderread.png'),
        backgroundColor: Colors.white,
      ),
      title: Text('Dosya Okuma Yazma'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DosyaIslemleri(kayitislemi: KayitIslemleri())),
        );
      },
    ),




  ]);
}
