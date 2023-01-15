import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';
import 'package:quickalert/quickalert.dart';
import 'package:http/http.dart' as http;

import 'build_button.dart';

var now;

class FuelStatusUpdate extends StatefulWidget {
  const FuelStatusUpdate({super.key});

  @override
  State<FuelStatusUpdate> createState() => _FuelStatusUpdateState();
}

class _FuelStatusUpdateState extends State<FuelStatusUpdate> {
  TimeOfDay _time = const TimeOfDay(hour: 7, minute: 15);

  get dropdownItems => null;

  get selectedValue => null;

  void updateArrivalTime() async {
    final arrivalTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (arrivalTime != null) {
      setState(() {
        _time = arrivalTime;
        print(_time.hour);
        postData();
      });
    }
  }

  //select fuel type
  // bool _isChecked = false;

  // void _onChanged(bool? value) {
  //   setState(() {
  //     _isChecked = value!;
  //   });
  // }

  //get fuel type
  String _fuelType = '';
  void _onchanged(String value) {
    setState(() {
      _fuelType = value;
    });
  }

  void updateFinishedTime() async {
    final TimeOfDay? finishedTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (finishedTime != null) {
      setState(() {
        _time = finishedTime;
        print(_time.hour);
        postData();
      });
    }
  }

  postData() async {
    var response = await http.post(
        Uri.parse("https://fuel-app-backend.up.railway.app/api/fuelStatus"),
        body: {
          "fuelTypeName": "Petrol",
          "arrivalTime": 8.15.toString(),
          "finishedTime": 12.50.toString(),
          "status": "Full"
        });
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    //Success alert builder
    final successAlert = buildButton(
      onTap: () {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          text: 'Time Update Successfully!',
        );
      },
      title: 'Are you sure?',
      text: 'Confirm Update',
      leadingIcon: const Icon(
        Icons.question_mark_outlined,
        color: Colors.red,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Fuel Status Update",
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/arrival.png'),
                height: 250,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: updateArrivalTime,
                // onPressed: () {
                //   var now = DateTime.now();
                //   print(now);
                // },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  //primary: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
                child: const Text('Update Fuel Arrival Time'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: updateFinishedTime,
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  //primary: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
                child: const Text('Update Fuel Finished Time'),
              ),
              const SizedBox(
                height: 20,
              ),
              successAlert,
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'dart:ui';

class AppColors {
  static final mainColor = Color(0xFF202e59);
  static final secondaryColor = Color(0xFF6c8ee3);
  static final smallTextColor = Color(0xFF2e3253);
  static final textHolder = Color(0xFFedf0f8);
  static final textGray = Color(0xFFafb1b5);
}
