import 'package:flutter/material.dart';
import '../theme.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  // ignore: use_key_in_widget_constructors
  const PrimaryButton({
    required this.buttonText,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29), color: kPrimaryColor),
        child: Text(
          buttonText,
          style: textButton.copyWith(color: kWhiteColor),
        ),
      ),
    );
  }
}
