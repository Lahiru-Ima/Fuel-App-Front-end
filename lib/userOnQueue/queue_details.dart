import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../theme.dart';

class QueueDetails extends StatefulWidget {
  const QueueDetails(
      {super.key,
      required this.dealer,
      required this.location,
      required this.petrolStatus,
      required this.dieselStatus});

  final String dealer;
  final String location;
  final String petrolStatus;
  final String dieselStatus;

  @override
  State<QueueDetails> createState() => _QueueDetailsState();
}

class _QueueDetailsState extends State<QueueDetails> {
  int _clickcount = 0;

  @override
  Widget build(BuildContext context) {
    // final album = ModalRoute.of(context)!.settings.arguments as Album;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fuel Queue'),
        backgroundColor: kPrimaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.dealer),
            Text(widget.location),
            Text(widget.petrolStatus),
            Text(widget.dieselStatus),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _clickcount++;
                  print(_clickcount);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                //primary: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 53, vertical: 15),
                textStyle: const TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text('Join To The Queue'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var response = await http.post(
                    Uri.parse(
                        "https://fuel-app-backend.up.railway.app/api/fuelQueue/exitBeforePump"),
                    body: {});
                // print(response.body);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                // primary: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text('Exit Before Pump Fuel'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var response = await http.post(
                    Uri.parse(
                        "https://fuel-app-backend.up.railway.app/api/fuelQueue/exitAfterPump"),
                    body: {});
                // print(response.body);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                //primary: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 47, vertical: 15),
                textStyle: const TextStyle(
                  color: kTextFieldColor,
                  fontSize: 20,
                  //fontWeight: FontWeight.bold
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text('Exit After Pump Fuel'),
            ),
          ],
        ),
      ),
    );
  }
}
