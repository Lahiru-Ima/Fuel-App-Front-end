// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Spacer(
          flex: 5,
        ),
        Image(
          image: AssetImage(image),
          width: 350,
        ),
        Spacer(
          flex: 2,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
