import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fuel_app/theme.dart';

import 'SearchBox.dart';
import 'categoryList.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        SizedBox(height: 1),
        Expanded(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            ProductCard()
          ],
        ))
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      height: 160,
      //color: Colors.blueAccent,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 136,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.blueGrey),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.purpleAccent, blurRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(22)),
            ),
          ),
          //image
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 160,
                width: 200,
                child: Image.asset(
                  "images/gas.png",
                  fit: BoxFit.cover,
                ),
              )),
          //title and price etc
        ],
      ),
    );
  }
}













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











