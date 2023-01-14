// ignore: file_names
import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';

//import 'SearchBox.dart';
//import 'categoryList.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Fuel House"),
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
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //   // style: ButtonStyle(backgroundColor: Colors.amber),
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/selectNearestShed');
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: kSecondaryColor,
            //     // primary: Colors.purple,
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            //     textStyle: const TextStyle(
            //       fontSize: 20,
            //       //fontWeight: FontWeight.bold
            //     ),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(40.0),
            //     ),
            //   ),
            //   child: const Text("Search Nearest Fuel station"),
            // ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              // style: ButtonStyle(backgroundColor: Colors.amber),
              onPressed: () {
                Navigator.pushNamed(context, '/joinQueue');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kSecondaryColor,
                // primary: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                textStyle: const TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text("Join To The Queue"),
            ),
            const SizedBox(
              height: 8,
            ),

            // SearchBox(
            //   onChanged: (value) {},
            // ),

            //const CategoryList(),

            // const SizedBox(height: 1),
            // Expanded(
            //     child: Stack(
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.only(top: 100),
            //       decoration: const BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(40),
            //               topRight: Radius.circular(40))),
            //     ),
            //     ListView.builder(
            //       itemCount: 3,
            //       itemBuilder: ((context, index) => const ProductCard()),
            //     )
            //   ],
            // )),
          ],
        ),
      ),
    );
  }
}

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: const EdgeInsets.symmetric(
//         horizontal: 30,
//         vertical: 30,
//       ),
//       height: 160,
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Container(
//             height: 136,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(22), color: kPrimaryColor),
//             child: Container(
//               margin: const EdgeInsets.only(left: 10),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     const BoxShadow(color: kPrimaryColor, blurRadius: 1)
//                   ],
//                   borderRadius: BorderRadius.circular(22)),
//             ),
//           ),
//           //image
//           Positioned(
//               top: 0,
//               left: 0,
//               child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 height: 160,
//                 width: 200,
//                 child: Image.asset(
//                   "images/gas.png",
//                   fit: BoxFit.cover,
//                 ),
//               )),
//           //title and price etc
//           Positioned(
//             right: 0,
//             bottom: 0,
//             child: SizedBox(
//               height: 136,
//               width: size.width - 200,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Spacer(),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Text(
//                       "Gas Avalability",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: kPrimaryColor),
//                     ),
//                   ),
//                   const Spacer(),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
//                     decoration: const BoxDecoration(
//                         color: Colors.amberAccent,
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(22),
//                           topRight: Radius.circular(22),
//                         )),
//                     child: const Text(
//                       "Available",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: kPrimaryColor),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }













// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:fuel_app/theme.dart';

// import 'SearchBox.dart';
// import 'categoryList.dart';

// class Body extends StatefulWidget {
//   static const routName = "/body";

//   const Body({super.key});

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 201, 157, 216),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text("Fuel Dashboard",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 ),
//                 Stack(
//                   children: [
//                     IconButton(
//                         onPressed: () {}, icon: Icon(Icons.notifications_none)),
//                     Positioned(
//                         top: 12,
//                         right: 12,
//                         child: Container(
//                           height: 10,
//                           width: 10,
//                           decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(20)),
//                         ))
//                   ],
//                 )
//               ],
//             ),
//             Column(children: [
//               SearchBox(
//                 onChanged: (value) {},
//               ),
//               CategoryList(),
//               SizedBox(
//                 height: 40,
//               ),
//               Expanded(
//                 child: Stack(
//                   children: [
//                     Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(40),
//                               topRight: Radius.circular(40),
//                             )))
//                   ],
//                 ),
//               ),
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }











