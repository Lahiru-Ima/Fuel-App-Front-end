import 'package:flutter/material.dart';
import 'package:fuel_app/DashBoardPage/productScreen.dart';
import 'package:fuel_app/screans/selectVehicle.dart';

final Map<String, WidgetBuilder> routes = {
  productScreen.routName: (context) => const productScreen(),
  SelectVehicle.routName: (context) => const SelectVehicle(),
};
