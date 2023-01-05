import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';
import 'package:quickalert/quickalert.dart';
import 'package:http/http.dart' as http;

class FuelStatusUpdate extends StatefulWidget {
  const FuelStatusUpdate({super.key});

  @override
  State<FuelStatusUpdate> createState() => _FuelStatusUpdateState();
}

class _FuelStatusUpdateState extends State<FuelStatusUpdate> {
  TimeOfDay _time = const TimeOfDay(hour: 7, minute: 15);

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('images/arrival.png'),
              height: 250,
              width: 200,
            ),
            ElevatedButton(
              onPressed: () {},
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
              child: const Text('Select Fuel Type'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: updateArrivalTime,
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
            // const SizedBox(height: 10),
            // Center(
            //   child: Text(
            //     'Fuel Arrival Time:\n        ${_time.format(context)}',
            //     style: const TextStyle(fontSize: 25, color: kSecondaryColor
            //         //fontWeight: FontWeight.bold
            //         ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

//CUstom button
Card buildButton({
  required onTap,
  required title,
  required text,
  required leadingIcon,
}) {
  return Card(
    shape: const StadiumBorder(),
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    clipBehavior: Clip.antiAlias,
    elevation: 1,
    child: ListTile(
      onTap: onTap,
      leading: leadingIcon,
      title: Text(title ?? ""),
      subtitle: Text(text ?? ""),
      trailing: const Icon(
        Icons.keyboard_arrow_right_rounded,
      ),
    ),
  );
}
