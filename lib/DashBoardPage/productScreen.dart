import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fuel_app/DashBoardPage/Body.dart';
import 'package:fuel_app/theme.dart';

class productScreen extends StatelessWidget {
  static const routName = "/productScreen";
  const productScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      //backgroundColor: Color.fromARGB(255, 201, 157, 216),
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("Fuel Availability"),
      centerTitle: false,

      //                 Stack(
      backgroundColor: kSecondaryColor,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
        // Positioned(
        //     top: 40,
        //     right: 30,
        //     child: Container(
        //       height: 5,
        //       width: 5,
        //       decoration: BoxDecoration(
        //           color: Colors.red, borderRadius: BorderRadius.circular(20)),
        //     ))
      ],
    );
  }
}
