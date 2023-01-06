import 'package:flutter/material.dart';
import 'package:fuel_app/OnbordingScreen/components/body.dart';
import 'package:fuel_app/screans/landing/util_functions.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      UtilFunctions.navigation(const OnbordingBody(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/splash.png'),
            const SizedBox(height: 8.0),
            const Text(
              "No waiting for fuel",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
