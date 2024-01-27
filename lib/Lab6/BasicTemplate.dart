//  Write a flutter code to divide horizontal space of screen in 3 different equal parts with
// different colors.

import 'package:flutter/material.dart';

class BasicTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic titleBarName = 'Hello World';
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          getExpanded(color: Colors.green),
          getExpanded(color: Colors.red),
          getExpanded(color: Colors.blue),
        ],
      ),
    );
  }
}

Expanded getExpanded({color}){
  return Expanded(
    child: Container(
      color: color,
    ),
  );
}