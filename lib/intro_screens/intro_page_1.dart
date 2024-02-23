import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: Padding(
        padding: const EdgeInsets.all(20.0), // Adjust padding as needed
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://lottie.host/77ad4171-3f50-46fe-aa12-78ee4ccc7f02/O5DSGrQvB4.json',
                width: 400,
                height: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Энэхүү аппликэйшн нь Хүрээ МХТД Сургуулийн үйл ажиллагаа болон тэмцээн уралдааны мэдээллийг хүргэнэ. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
