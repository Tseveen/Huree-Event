import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[100],
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/65b3de72-5824-4936-8285-99ca6aa7b512/UwqIQvEzys.json',
              width: 400,
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Таалагдсан үнэлгээ дээрээ сэтгэгдэл болон үнэлгээ өгөх боломжтой',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        )));
  }
}
