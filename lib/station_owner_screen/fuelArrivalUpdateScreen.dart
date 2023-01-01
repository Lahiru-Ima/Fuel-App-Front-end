import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: Text("FuelArrivalUpdate"),
        backgroundColor: Color.fromARGB(255, 201, 157, 216),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
          
              onPressed: _selectTime,
              child: Text('Update Fuel Arrival Time'),
            ),
            SizedBox(height: 10),
            Text(
              'Fuel Arrival Time: ${_time.format(context)}',
            ),
          ],
        ),
      ),
    );
  }
}



















            
            


