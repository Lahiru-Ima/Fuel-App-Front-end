import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../theme.dart';

class QueueDetails extends StatefulWidget {
  const QueueDetails(
      {super.key,
      required this.name,
      required this.location,
      required this.petrolStatus,
      required this.dieselStatus});

  final String name;
  final String location;
  final String petrolStatus;
  final String dieselStatus;

  @override
  State<QueueDetails> createState() => _QueueDetailsState();
}

class _QueueDetailsState extends State<QueueDetails> {
  int _petrolcount = 0;
  int _dieselcount = 0;
  bool _isDisable = true;

  _QueueDetailsState() {
    _selectFuelType = _fuelType[0];
  }

  final _fuelType = [
    "Diesel",
    "Petrol",
  ];

  String? _selectFuelType = "";

  void joinQueue() {
    setState(() {
      if (_selectFuelType == 'Petrol') {
        _petrolcount++;
      } else {
        _dieselcount++;
      }
    });
    _isDisable = false;
  }

  Future<void> beforePump() async {
    if (_petrolcount == 0 && _dieselcount == 0) {
      _isDisable = true;
    } else {
      var response = await http.post(
          Uri.parse(
              "https://fuel-app-backend.up.railway.app/api/fuelQueue/exitBeforePump"),
          body: {});
      setState(() {
        if (_selectFuelType == 'Petrol') {
          _petrolcount--;
        } else {
          _dieselcount--;
        }
      });
    }
  }

  Future<void> afterPump() async {
    if (_petrolcount == 0 && _dieselcount == 0) {
      _isDisable = true;
    } else {
      var response = await http.post(
          Uri.parse(
              "https://fuel-app-backend.up.railway.app/api/fuelQueue/exitAfterPump"),
          body: {});
      print(response.body);
      setState(() {
        if (_selectFuelType == 'Petrol') {
          _petrolcount--;
        } else {
          _dieselcount--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fuel Queue'),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 400,
            height: 180,
            child: Card(
              elevation: 0,
              color: kSecondaryColor,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  title: Text(
                    widget.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  subtitle: Text(widget.location,
                      style: const TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 18)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Petrol Status = ${widget.petrolStatus}",
                        style: const TextStyle(fontSize: 15)),
                    Text("Diesel Status = ${widget.dieselStatus}",
                        style: const TextStyle(fontSize: 15)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Queue Type = Petrol",
                        style: TextStyle(fontSize: 15)),
                    Text("Queue Count = $_petrolcount",
                        style: const TextStyle(fontSize: 15)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Queue Type = Disesl",
                        style: TextStyle(fontSize: 15)),
                    Text("Queue Count = $_dieselcount",
                        style: const TextStyle(fontSize: 15)),
                  ],
                )
              ]),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.fromLTRB(80, 3, 80, 3),
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
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: joinQueue,
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              //primary: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 53, vertical: 15),
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
            onPressed: _isDisable ? null : beforePump,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              // primary: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
            onPressed: _isDisable ? null : afterPump,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              //primary: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 47, vertical: 15),
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
    );
  }
}
