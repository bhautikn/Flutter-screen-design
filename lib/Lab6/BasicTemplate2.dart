// Write a flutter code to divide the vertical space of the screen in 3 different equal parts with
// different colors.

import 'package:flutter/material.dart';

class BasicTemplate2 extends StatelessWidget {
  const BasicTemplate2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
