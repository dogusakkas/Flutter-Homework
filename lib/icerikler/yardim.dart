import 'package:flutter/material.dart';


class yardim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yardım"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Yardım için ana sayfa üzerinde de belirttiğimiz telefon numarasını arayınız.",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}