import 'dart:ui';

import 'package:app_new/project_screen/cards/UICards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  dynamic txtColor = Colors.white;
  dynamic bgColor = Colors.black87;
  dynamic iconColor = Colors.yellow;
  
  Widget getTitleItem(title, number) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Text(
            '$title',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(400)),
            child: Text(
              '$number',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  dynamic list = [];

  @override
  void initState() {
    super.initState();
    list = [
      getTitleItem('UI Design', 23),
      getTitleItem('WebFlow', 15),
      getTitleItem('Development', 25),
      getTitleItem('UX Design', 25),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:  Container(
          padding: const  EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hello, ',
                            style:
                            GoogleFonts.lato(
                                color: txtColor, fontSize: 20
                            ),
                          ),
                          Text(
                            'Bhautik',
                            style: GoogleFonts.lato(
                                color: txtColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.account_tree,
                            color: iconColor,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Basic member',
                            style: TextStyle(
                              color: txtColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Expanded(child: Text('')),
                  Icon(
                    Icons.account_circle_rounded,
                    color: iconColor,
                    size: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Let\'s Learn New Stuff!',
              style: GoogleFonts.lato(
                  color: txtColor, fontSize: 40, height: 1),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: list,
              ),
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: SingleChildScrollView(
                // scrollDirection: Axis.vertical,
                child: UICards()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
