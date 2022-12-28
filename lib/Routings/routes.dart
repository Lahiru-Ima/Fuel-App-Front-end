import 'package:flutter/material.dart';
import 'package:fuel_app/DashBoardPage/Body.dart';
import 'package:fuel_app/DashBoardPage/DashBoardPage.dart';
import 'package:fuel_app/DashBoardPage/productScreen.dart';
import 'package:fuel_app/screans/selectVehicle.dart';

final Map<String, WidgetBuilder> routes = {
  productScreen.routName: (context) => productScreen(),
  SelectVehicle.routName: (context) => SelectVehicle(),
};
