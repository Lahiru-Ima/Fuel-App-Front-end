import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  dynamic _data;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  

  _getData() async {
    final response = await http.get(
        Uri.parse('https://fuel-app-backend.up.railway.app/api/fuelStation'));
    final jsonData = jsonDecode(response.body) as List;
    print(jsonData);
    setState(() {
      _data = jsonData;
      // print(_data);
    });
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Data"),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_data[index]["name"]),
            subtitle: Text(_data[index]["dealer"]),
          );}
      ),
    );
  }
}
