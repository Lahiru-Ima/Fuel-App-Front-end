import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatefulWidget {
  static const routName = "/body";

  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 157, 216),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Fuel Dashboard",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications_none)),
                    Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                        ))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 1),
                  blurRadius: 4,
                )
              ]),
              child: const ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.blueGrey,
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Find nearest fuel store",
                      border: InputBorder.none),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}








// class Body extends StatelessWidget {
//   const Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//       Container(
//         margin: const EdgeInsets.all(10),
//         padding: EdgeInsets.symmetric(
//             //horizontal: Padding
//             ),
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.4),
//           borderRadius: BorderRadius.circular(20),
//         ),
//       )
//     ]);
//   }
// }
