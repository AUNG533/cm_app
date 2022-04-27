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
            headerSection, titleSection, buttonSection, courseSection,
          ],
        ),
      ),
    );
  }
}

Widget headerSection = Container(height: 250, color: Colors.blue,);
Widget titleSection = Container(height: 250, color: Colors.red,);
Widget buttonSection = Container(height: 250, color: Colors.green,);
Widget courseSection = Container(height: 250, color: Colors.yellow,);

