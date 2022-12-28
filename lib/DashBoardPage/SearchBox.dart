import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20)),
      child: const ListTile(
        // onChanged:onChanged,
        leading: Icon(
          Icons.search,
          color: Color.fromARGB(255, 70, 5, 98),
        ),
        title: TextField(
          decoration: InputDecoration(
              hintText: "Find nearest fuel station", border: InputBorder.none),
        ),
        trailing: Icon(
          Icons.filter_list,
          color: Color.fromARGB(255, 70, 5, 98),
        ),
      ),
    );
  }
}
