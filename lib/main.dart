import 'package:app_new/Lab8/A2.dart';
import 'package:app_new/Lab8/A3.dart';
import 'package:app_new/Lab8/B1.dart';
import 'package:app_new/Lab8/B2.dart';
import 'package:app_new/project_screen/HomePage.dart';
import 'package:app_new/project_screen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'Lab6/BasicTemplate.dart';
import 'Lab6/BasicTemplate2.dart';
import 'Lab6/BasicTemplate3.dart';
import 'Lab6/BasicTemplate4.dart';

import 'Lab7/A1.dart';
import 'Lab8/A1.dart';
import 'Lab7/A2.dart';

import 'Extra/Frame1.dart';
import 'Extra/Frame2.dart';
import 'Extra/Frame3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
