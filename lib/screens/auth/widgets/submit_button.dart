// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const SubmitButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(29), boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.25),
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 1)
      ]),
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29),
                      side: BorderSide.none)),
              backgroundColor: MaterialStateProperty.all<Color>(
                kPrimaryColor,
              )),
          onPressed: onPressed,
          child: Text(title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ))),
    );
  }
}
