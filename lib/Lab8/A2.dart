import 'package:flutter/material.dart';

class Lab8A2 extends StatelessWidget {
  const Lab8A2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            'assets/images/back-image.jpg',
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black45),
            child: Center(
              child: Text(
                'Hello World',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
