import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}
// class CategoryList extends StatefulWidget {
//   const CategoryList({super.key});

@override
State<CategoryList> createState() => _CategoryListState();

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
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Colors.white.withOpacity(0.4)
                    : Colors.transparent,
                // color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(categories[index],
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}
