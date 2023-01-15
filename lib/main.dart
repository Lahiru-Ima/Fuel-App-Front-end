import 'package:flutter/material.dart';
import 'package:fuel_app/DashBoardPage/Body.dart';
import 'package:fuel_app/screens/landing/landing.dart';
import 'package:fuel_app/screens/auth/auth_screen.dart';
import 'package:fuel_app/station_owner_screen/fuelStatusUpdateScreen.dart';
import 'package:fuel_app/viewQue/viewQueue.dart';


void main() {
  runApp(const FuelApp());
}

class FuelApp extends StatelessWidget {
  const FuelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        title: 'Fuel App',
        home: const LandingPage(),
        routes: {
          '/registerPage': (context) => const AuthScreen(),
          '/dashBoard': (context) => const Body(),
          '/fuelStateUpdate': (context) => const FuelStatusUpdate(),
          '/viewQueue': (context) => const ViewQueue(),
        });
  }
}
