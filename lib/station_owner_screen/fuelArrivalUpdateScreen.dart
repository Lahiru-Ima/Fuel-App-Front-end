import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';

class FuelArrivalUpdate extends StatefulWidget {
  @override
  State<FuelArrivalUpdate> createState() => _FuelArrivalUpdateState();
}

class _FuelArrivalUpdate {}

class _FuelArrivalUpdateState extends State<FuelArrivalUpdate> {
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fuel Arrival Update"),
        backgroundColor: kPrimaryColor,
        // backgroundColor: Color.fromARGB(255, 201, 157, 216),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(100),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            const Image(
              image: AssetImage('images/arrival.png'),
              height: 400,
              width: 300,
            ),
            ElevatedButton(
              onPressed: _selectTime,
              child: Text('Update Fuel Arrival Time'),
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                //primary: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(40.0),
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                'Fuel Arrival Time:\n        ${_time.format(context)}',
                style: TextStyle(fontSize: 25, color: kSecondaryColor
                    //fontWeight: FontWeight.bold
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
