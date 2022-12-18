import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'DashBoardPage/DashBoardPage.dart';

void main() {
  runApp(FuelApp());
}

class FuelApp extends StatelessWidget {
  FuelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fuel App',
      home: DashBoardPage(),
    );
  }
}
