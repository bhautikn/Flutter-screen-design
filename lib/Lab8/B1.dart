import 'dart:math';

import 'package:flutter/material.dart';

class Lab8B1 extends StatefulWidget {
  Lab8B1({super.key});

  @override
  State<Lab8B1> createState() => _Lab8B1State();
}

class _Lab8B1State extends State<Lab8B1> {
  var curruntImage = 6;

  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  curruntImage =  random.nextInt(6)+1;
                }); 
              },
              child: Text(
                'Roll',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(height: 20,),
            Image.asset(
              'assets/images/$curruntImage.png',
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
