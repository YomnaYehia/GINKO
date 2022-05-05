import 'package:flutter/material.dart';
import 'package:ginko/Location.dart';
import 'package:ginko/add_Medical_Reminder.dart';
import 'package:ginko/home.dart';
import 'package:ginko/medicine%20reminder.dart';
import 'Awareness.dart';
import 'package:http/http.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Location(),
    );
  }
}
