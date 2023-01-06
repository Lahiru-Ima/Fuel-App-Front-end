import 'package:flutter/material.dart';

class UtilFunctions {
  //navigation content
  static navigation(Widget widget, BuildContext context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  //go back function
  static goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
