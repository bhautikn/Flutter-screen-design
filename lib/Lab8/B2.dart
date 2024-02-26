import 'package:flutter/material.dart';

class Lab8B2 extends StatelessWidget {
  const Lab8B2({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text(
            'App Logo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),

          ),
        ),
      ),
    );
  }
}
