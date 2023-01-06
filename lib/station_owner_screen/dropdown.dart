import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton(
      {super.key,
      required value,
      required List<DropdownMenuItem<String>> items});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Petrol"), value: "Petrol"),
    DropdownMenuItem(child: Text("Desal"), value: "Desal"),
  ];
  return menuItems;
}

class _DropDownButtonState extends State<DropDownButton> {
  get selectedValue => null;

  @override
  Widget build(BuildContext context) {
    return DropDownButton(value: selectedValue, items: dropdownItems);
  }
}
