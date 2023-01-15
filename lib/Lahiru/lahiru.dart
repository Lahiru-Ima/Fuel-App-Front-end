import 'package:flutter/material.dart';

import '../theme.dart';

class Lahiru extends StatefulWidget {
  const Lahiru({super.key});

  @override
  State<Lahiru> createState() => _LahiruState();
}

class _LahiruState extends State<Lahiru> {
  _LahiruState() {
    _selectFuelType = _fuelType[0];
  }
  final _fuelType = [
    "Diesel",
    "Petrol",
  ];
  String? _selectFuelType = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(40)
              //.copyWith(bottomRight: Radius.circular(0)),
              ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              style: const TextStyle(
                color: Colors.white, //<-- SEE HERE
                fontSize: 20,
                //fontWeight: FontWeight.bold
              ),
              dropdownColor: kPrimaryColor,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white, // <-- SEE HERE
              ),
              value: _selectFuelType,
              items: _fuelType
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selectFuelType = val as String;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
