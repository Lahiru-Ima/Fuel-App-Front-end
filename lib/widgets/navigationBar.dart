import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fuel_app/theme.dart';

import '../DashBoardPage/productScreen.dart';
import '../screans/login.dart';
import '../screans/selectVehicle.dart';
import '../station_owner_screen/fuelStatusUpdateScreen.dart';
import '../station_owner_screen/fuelFinishUpdateScreen.dart';
import '../userOnQueue/queueUpdateScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final Screens = [
    const productScreen(),
    const SelectVehicle(),
    const QueueUpdate(),
    FuelStatusUpdate(),
    // FuelStatusUpdate(),
    // FuelFinishUpdate(),
    //FuelFinishUpdate(),

    // Center(child: Text("Home")),
    // Center(child: Text("Profile")),
    // Center(child: Text("Search")),
    // Center(child: Text("Fuel Availability")),
    // Center(child: Text("Nearest Fuel Station")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kSecondaryColor,
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: kPrimaryColor),
            const BottomNavigationBarItem(
                icon: Icon(Icons.car_crash_outlined),
                label: "vehicle Type",
                backgroundColor: kPrimaryColor),
            const BottomNavigationBarItem(
                icon: Icon(Icons.queue),
                label: "Queue",
                backgroundColor: kPrimaryColor),
            const BottomNavigationBarItem(
                icon: Icon(Icons.update),
                label: "Fuel Status",
                backgroundColor: kPrimaryColor),
            // const BottomNavigationBarItem(
            //     icon: Icon(Icons.update),
            //     label: "Fuel Arrival",
            //     backgroundColor: kPrimaryColor),
            // const BottomNavigationBarItem(
            //     icon: Icon(Icons.timeline),
            //     label: "Fuel Finish",
            //     backgroundColor: kPrimaryColor),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.timeline),
            //     label: "EndTime",
            //     backgroundColor: kPrimaryColor),
          ]),
    );
  }
}
