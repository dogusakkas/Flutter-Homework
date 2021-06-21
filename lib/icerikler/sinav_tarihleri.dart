import 'package:flutter/material.dart';


class sinav_tarihleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kaydınızı Oluşturun"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "İkinci Sayfaya Hoş Geldiniz!",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}