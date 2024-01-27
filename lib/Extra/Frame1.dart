import 'package:flutter/material.dart';

class Frame1 extends StatelessWidget {
  const Frame1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          getExpanded(color: Colors.green),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      getExpanded(color: Colors.red),
                      getExpanded(color: Colors.blue),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                getExpanded(color: Colors.blueGrey),
                getExpanded(color: Colors.greenAccent),
                getExpanded(color: Colors.yellow),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Expanded getExpanded({color, flex = 1}) {
  return Expanded(
    flex: flex,
    child: Container(
      color: color,
    ),
  );
}
