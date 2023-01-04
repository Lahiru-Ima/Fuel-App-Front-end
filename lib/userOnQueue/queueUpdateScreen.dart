import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';

class QueueUpdate extends StatelessWidget {
  const QueueUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //backgroundColor: const Color.fromARGB(255, 201, 157, 216),
        body: Center(
            child: Column(children: [
      const Image(
        image: AssetImage('images/fuelque.png'),
        height: 400,
        width: 300,
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: RichText(
                text: const TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Fuel Center',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor))
                ])),
          ),
        ),
      ),
      const Text(
        'Update your status here \n  to get a better service',
        style: TextStyle(
            //color: kDarkGreyColor,
            color: kZambeziColor,
            fontSize: 15),
      ),
      const SizedBox(height: 40),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: (() {}),
            child: const Text('Join To The Queue'),
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              //primary: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
              textStyle: const TextStyle(
                fontSize: 20,
                //fontWeight: FontWeight.bold
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (() {}),
            child: const Text('Exit Before Pump Fuel'),
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              // primary: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: const TextStyle(
                fontSize: 20,
                //fontWeight: FontWeight.bold
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (() {}),
            child: const Text('Exit After Pump Fuel'),
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              //primary: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 57, vertical: 20),
              textStyle: const TextStyle(
                color: kTextFieldColor,
                fontSize: 20,
                //fontWeight: FontWeight.bold
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0),
              ),
            ),
          ),
        ],
      ),
    ])));
  }
}
