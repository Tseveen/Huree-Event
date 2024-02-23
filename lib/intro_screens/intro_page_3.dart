import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/b176e900-81a7-4c7b-beae-552203ee19af/s3Ot7eEs9o.json',
              width: 400, // Adjust width as needed
              height: 300, // Adjust height as needed
            ),
            SizedBox(
              height: 20,
            ), // Adjust spacing between Lottie animation and text
            Text(
              'Мөн хоорондоо харилцах боломжтой.', // Replace 'Your Text Here' with the desired text
              textAlign: TextAlign.center, // Center text horizontally
              style: TextStyle(
                fontSize: 20, // Adjust font size as needed
                fontWeight: FontWeight.bold, // Adjust font weight as needed
                color: Colors.black, // Adjust text color as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
