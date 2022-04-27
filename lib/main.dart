// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
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

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(icon: Icons.thumb_up, label: "like"),
    _buildButtonColumn(icon: Icons.comment, label: "Comment"),
    _buildButtonColumn(icon: Icons.share, label: "Share"),
  ],
);

Column _buildButtonColumn({required IconData icon, required String label}) {
  var icColors = Colors.grey.shade500;
  return Column(
    children: [
      Icon(icon, color: icColors),
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13, color: icColors),
        ),
      ),
    ],
  );
}

Widget courseSection = Container(
  height: 250,
  color: Colors.yellow,
);
