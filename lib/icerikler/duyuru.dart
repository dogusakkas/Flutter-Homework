import 'package:flutter/material.dart';


class duyuru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duyuru"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Duyuru Üniversitemiz ile Microsoft arasında yapılan kampüs anlaşması ile birlikte tüm öğrencilerimizin Microsoft office365 üyeliği aktif edilmiştir. Öğrencilerimiz https:/www.office.com/ adresine bağlanarak oturum açın kısmından @ogr.selcuk.edu.tr uzantılı mail adresi ve aşağıda örnekte verilen geçici şifre ile sisteme bağlanıp yeni şifre oluşturarak bilgisayarlarına Office uygulamalarını ücretsiz olarak indirip kullanabileceklerdir.",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}