import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'SearchBox.dart';

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
            SearchBox(
              onChanged: (value) {},
            ),
            CategoryList(),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ["All", "Petrol", "Desal", "Gas"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 28),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(categories[index],
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold))),
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
