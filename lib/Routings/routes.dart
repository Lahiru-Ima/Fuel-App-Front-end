import 'package:flutter/material.dart';
import 'package:fuel_app/DashBoardPage/Body.dart';
import 'package:fuel_app/DashBoardPage/DashBoardPage.dart';
import 'package:fuel_app/screans/selectVehicle.dart';

final Map<String, WidgetBuilder> routes = {
  Body.routName: (context) => Body(),
  SelectVehicle.routName: (context) => SelectVehicle(),
};
