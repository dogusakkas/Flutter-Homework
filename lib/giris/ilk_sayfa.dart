import 'package:flutter/material.dart';
import 'package:flutter_app/giris/hakkinda.dart';
import '../icerikler/ana_sayfa.dart';



class ilk_sayfa extends StatefulWidget {

  String kullaniciAdi, sifre;
  ilk_sayfa({this.kullaniciAdi, this.sifre});
  @override
  _ilk_sayfaState createState() => _ilk_sayfaState();
}

class _ilk_sayfaState extends State<ilk_sayfa>
with SingleTickerProviderStateMixin
{

  AnimationController _controller;
  Animation <double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut)..addListener(() => this.setState(() {}))
    ..addStatusListener((durum) { });
    _controller.repeat();

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: [
              
              //Text("Deneme"),

              //Text(widget.kullaniciAdi+" Numaralı Öğrencimiz, Hoş Geldiniz :)",style: TextStyle(fontSize: 22),),

              Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/selcuk_logo.png',),
                    backgroundColor: Colors.white,
                  )),

              RaisedButton(
                color: Colors.blue,
                  child: Text("Ana Sayfa",style: TextStyle(fontSize: 15),),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ana_sayfa(),
                      ),
                    );
                  }
                  ), // Son açılan ekranı kapatmaya yarıyor

              RaisedButton(
                  color: Colors.blue,
                  child: Text("Hakkında",style: TextStyle(fontSize: 15),),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => hakkinda(),),
                    );
                  }
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hoş Geldiniz",style: TextStyle(fontSize: 20 + _animation.value*10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:40),

                  )],
              ),


              ],
          )),
    );
  }
}
