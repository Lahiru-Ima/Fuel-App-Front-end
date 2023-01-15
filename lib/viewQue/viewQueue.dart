import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';

class ViewQueue extends StatefulWidget {
  static const routName = "/viewQueue";
  const ViewQueue({super.key});

  @override
  State<ViewQueue> createState() => _ViewQueueState();
}

class _ViewQueueState extends State<ViewQueue> {
  _ViewQueueState() {
    _selectedVal = _vehicleType[0];
    _selectFuelStation = _fuelStation[0];
    _selectFuelType = _fuelType[0];
  }

  final _fuelType = [
    "Diesel",
    "Petrol",
  ];

  final _fuelStation = [
    "Matara",
    "Akuressa",
    "Galle",
    "Nugegoda",
    "Kottawa",
    "Horana"
  ];

  final _vehicleType = [
    "Bike",
    "3Wheel",
    "Quardricycle",
    "Car",
    "Van",
    "Bus",
    "Lorry",
    "Special purpose vehicle",
    "Land vehicles"
  ];

  String? _selectFuelType = "";
  String? _selectFuelStation = "";
  String? _selectedVal = "";
  String? _displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Join Queue"),
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: kPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dashBoard');
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/viewQueue');
              },
              icon: Icon(Icons.car_crash_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/joinQueue');
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Scan()));
              },
              icon: Icon(
                Icons.queue,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fuelStateUpdate');
              },
              icon: Icon(Icons.update),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('images/fuelWoman.png'),
                  height: 200,
                  width: 200,
                ),
                const Text(
                  "Select Fuel Type Here:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(40)
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
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Select Fuel Station Here:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      style: const TextStyle(
                        color: Colors.white, //<-- SEE HERE
                        fontSize: 20,
                      ),
                      dropdownColor: kPrimaryColor,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white, // <-- SEE HERE
                      ),
                      value: _selectFuelStation,
                      items: _fuelStation
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectFuelStation = val as String;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Select Your Vehicle Type Here:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(40)
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
                      value: _selectedVal,
                      items: _vehicleType
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedVal = val as String;

                          //petrol
                          if (_selectedVal == _vehicleType[0]) {
                            _displayText = "You can buy maximum 4L for a week";
                          }
                          if (_selectedVal == _vehicleType[1]) {
                            _displayText = "You can buy maximum  5L for a week";
                          }
                          if (_selectedVal == _vehicleType[2]) {
                            _displayText = "You can buy maximum 4L for a week";
                          }
                          if (_selectedVal == _vehicleType[3]) {
                            _displayText =
                                "You can buy maximum  20L for a week";
                          }
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  _displayText!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/queueUpdateScreen');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  child: const Text("View Queue"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
