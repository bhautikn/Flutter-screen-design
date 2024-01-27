import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab8A3 extends StatelessWidget {
  const Lab8A3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2000),
                              child: Image.asset('assets/images/back-image.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.white))
                                ),
                                child: Text(
                                  "It's Your Spacial Day!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Text(
                                'Happy,\nBirthDay',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  // fontFamily:
                                ),
                              ),
                              Icon(
                                Icons.sentiment_satisfied_alt,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
