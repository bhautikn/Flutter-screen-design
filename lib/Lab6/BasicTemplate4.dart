// Write a flutter code to divide the whole screen into 9 (equal size and the different size) with
// different colors.

import 'package:flutter/material.dart';

class BasicTemplate4 extends StatelessWidget {
  const BasicTemplate4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                getExpanded(color: Colors.green),
                getExpanded(color: Colors.red),
                getExpanded(color: Colors.blue, flex: 2),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                getExpanded(color: Colors.yellow, flex: 2),
                getExpanded(color: Colors.greenAccent, flex: 2),
                getExpanded(color: Colors.blueGrey),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                getExpanded(color: Colors.amber),
                getExpanded(color: Colors.redAccent, flex: 3),
                getExpanded(color: Colors.black12, flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Expanded getExpanded({color, flex=1}){
  return Expanded(
    flex: flex,
    child: Container(
      color: color,
    ),
  );
}