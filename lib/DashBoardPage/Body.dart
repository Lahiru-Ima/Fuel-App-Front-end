// ignore: file_names
import 'dart:convert';
import 'dart:async';
import 'package:fuel_app/userOnQueue/queue_details.dart';

import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';
import 'package:http/http.dart' as http;

import '../station_owner_screen/fuelStatusUpdateScreen.dart';
import '../userOnQueue/queue_details.dart';
// import 'package:dio/dio.dart';

//import 'SearchBox.dart';
//import 'categoryList.dart';

Future<List<Album>> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://fuel-app-backend.up.railway.app/api/fuelStation'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    // return Album.fromJson(jsonDecode(response.body));

    // final jsonresponse = jsonDecode(response.body);
    // return Album.fromJson(jsonresponse.body);
    final List result = json.decode(response.body);
    return result.map((e) => Album.fromJson(e)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final String name;
  final String location;
  final String petrolStatus;
  final String dieselStatus;

  const Album({
    required this.name,
    required this.location,
    required this.petrolStatus,
    required this.dieselStatus,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        name: json['name'],
        location: json['location'],
        petrolStatus: json['petrolStatus'],
        dieselStatus: json['dieselStatus']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['Location'] = location;
    data['petrolStatus'] = petrolStatus;
    data['dieselStatus'] = dieselStatus;
    return data;
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  static int _amount = 1;

  // QueueDetails()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Fuel Station List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: Colors.teal[100],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              // Container(
              //   padding: EdgeInsets.all(8),
              //   child: Container(
              //     padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              //     decoration: BoxDecoration(
              //       color: Colors.teal[200],
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     child: Text(
              //       "Fuel Station List",
              //       style: TextStyle(
              //           fontSize: 20,
              //           color: Color.fromARGB(255, 0, 0, 0),
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ),
              //   decoration: BoxDecoration(),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                height: 650,
                child: FutureBuilder<List<Album>>(
                  future: fetchAlbum(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Card(
                            shadowColor: Colors.white,
                            color: Color.fromARGB(255, 240, 241, 242),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QueueDetails(
                                      name: snapshot.data![index].name,
                                      location: snapshot.data![index].location,
                                      petrolStatus:
                                          snapshot.data![index].petrolStatus,
                                      dieselStatus:
                                          snapshot.data![index].dieselStatus,
                                    ),
                                  ),
                                );
                              },
                              title: Text(
                                snapshot.data![index].name.toString(),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              // trailing: Text(snapshot.data![index].petrolStatus
                              //     .toString()),
                              trailing: IconButton(
                                onPressed: () {
                                  // setState(() {
                                  //   _amount++;
                                  //   print(_amount);
                                  // });
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QueueDetails(
                                        name: snapshot.data![index].name,
                                        location:
                                            snapshot.data![index].location,
                                        petrolStatus:
                                            snapshot.data![index].petrolStatus,
                                        dieselStatus:
                                            snapshot.data![index].dieselStatus,
                                      ),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 30,
                                  color: Colors.teal[800],
                                ),
                              ),
                              // leading: Text(_amount.toString()),

                              subtitle: Text(
                                  snapshot.data![index].location.toString()),
                              // subtitle: Text(petrolcount.toString()),
                            ),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return Center(child: const CircularProgressIndicator());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
