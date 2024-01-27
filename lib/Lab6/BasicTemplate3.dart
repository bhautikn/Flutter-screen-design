// Write a flutter code to divide the whole screen into 9 (equal size and the different size) with
// different colors.

import 'package:flutter/material.dart';

class BasicTemplate3 extends StatelessWidget {
  const BasicTemplate3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                getExpanded(color: Colors.green),
                getExpanded(color: Colors.red),
                getExpanded(color: Colors.blue),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                getExpanded(color: Colors.yellow),
                getExpanded(color: Colors.greenAccent),
                getExpanded(color: Colors.blueGrey),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                getExpanded(color: Colors.amber),
                getExpanded(color: Colors.redAccent),
                getExpanded(color: Colors.black12),
              ],
            ),
          ),
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