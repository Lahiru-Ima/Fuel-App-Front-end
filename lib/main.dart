import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fuel_app/DashBoardPage/Body.dart';
import 'package:fuel_app/DashBoardPage/productScreen.dart';
import 'package:fuel_app/screans/customerLogin.dart';
import 'package:fuel_app/screans/landing/landing.dart';
import 'package:fuel_app/screans/login.dart';
import 'package:fuel_app/screans/selectNearestShed.dart';
import 'package:fuel_app/screans/selectVehicle.dart';
import 'package:fuel_app/screans/signup.dart';
import 'package:fuel_app/screens/auth/auth_screen.dart';
import 'package:fuel_app/station_owner_screen/fuelStatusUpdateScreen.dart';
import 'package:fuel_app/userOnQueue/queueUpdateScreen.dart';
import 'package:fuel_app/viewQue/viewQueue.dart';
import 'package:fuel_app/widgets/navigationBar.dart';

import 'OnbordingScreen/components/body.dart';


void main() {
  runApp(FuelApp());
}

class FuelApp extends StatelessWidget {
  FuelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        title: 'Fuel App',
        // home: productScreen(),
        // home: SignUpScreen(),
        // home: SelectVehicle(),
        //home: FuelStatusUpdate(),
        //home: ViewQueue(),
        // home: FuelFinishUpdate(),
        // home: QueueUpdate(),
        // home: SplashBody(),
        // home: NavBar(),
        // home: SearchNearestShed(),
        //home: const LogInScreen(),
        // home: Body(),
        // home: GetData(),
        //home:const Lahiru(),
        home: LandingPage(),
        // home: const Signup(),
        routes: {
          '/registerPage': (context) => AuthScreen(),
          '/selectNearestShed': (context) => const SearchNearestShed(),
          '/loginPage': (context) => const LogInScreen(),
          '/customerLogin': (context) => const CustomerLogin(),
          '/dashBoard': (context) => const Body(),
          '/fuelStateUpdate': (context) => const FuelStatusUpdate(),
          '/joinQueue': (context) => const QueueUpdate(),
          '/viewQueue': (context) => const ViewQueue(),
          //'/regustrationNew': (context) => const Signup()
        });
  }
}
