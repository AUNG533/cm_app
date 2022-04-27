// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CM Workshop Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CM Workshop Layout"),
        ),
        body: ListView(
          children: [
            headerSection,
            titleSection,
            buttonSection,
            courseSection,
          ],
        ),
      ),
    );
  }
}

Widget headerSection = Image.network(
    'https://cdn.dribbble.com/users/1455469/screenshots/8929931/dribbble-fitkiddo-ios-app-shot-home_4x.png');

Widget titleSection = Padding(
  padding: EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flutter Mobile Apps",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Bangkok, Thailand"),
        ],
      )),
      Icon(
        Icons.thumb_up,
        color: Colors.blue,
      ),
      Container(
        margin: EdgeInsets.only(left: 8),
        child: Text("99"),
      )
    ],
  ),
);

Widget buttonSection = Container(
  height: 250,
  color: Colors.green,
);
Widget courseSection = Container(
  height: 250,
  color: Colors.yellow,
);
