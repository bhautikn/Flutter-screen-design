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
  
  Widget getTitleItem(title, number, obj) {
    return InkWell(
      onTap: () {
        setState(() {
          couses = obj;
        });
      },
      child: Container(
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
      ),
    );
  }

  dynamic list = [
    {
      'name': 'UI Design',
      'total': 15,
      'detail':
      [
        {
          'name': 'done',
          'title': 'UI\nFlowChart',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.green,
          'duration': '10h 43min',
          'prize': 126,
          'lessons': [
            {'title': 'Introduction', 'duration': '8 Minutes'},
            {'title': 'Ideation', 'duration': '23 Minutes'},
            {'title': 'Idea & Generate', 'duration': '34 Minutes'},
          ]
        },
        {
          'name': 'Joshef',
          'title': 'illustration\nWith Figma',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.white,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '15 Minutes'},
            {'title': 'Creation', 'duration': '13 Minutes'},
            {'title': 'Idea & Generate', 'duration': '37 Minutes'},
            {'title': 'Idea & ReGenerate', 'duration': '54 Minutes'},
          ]
        },
        {
          'name': 'john',
          'title': 'Create\nBasic Design',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.redAccent,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '5 Minutes'},
            {'title': 'Creation Work', 'duration': '32 Minutes'},
            {'title': 'Idea & Generate', 'duration': '3 Minutes'},
            {'title': 'Create & Generate', 'duration': '47 Minutes'},
          ]
        },
      ]
    },
    {
      'name': 'Development',
      'total': 25,
      'detail':
      [
        {
          'name': 'Bhautik',
          'title': 'UI/UX\nFlowChart',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.green,
          'duration': '10h 43min',
          'prize': 126,
          'lessons': [
            {'title': 'Introduction', 'duration': '8 Minutes'},
            {'title': 'Ideation', 'duration': '23 Minutes'},
            {'title': 'Idea & Generate', 'duration': '34 Minutes'},
          ]
        },
        {
          'name': 'Joshef',
          'title': 'illustration\nWith Figma',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.white,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '15 Minutes'},
            {'title': 'Creation', 'duration': '13 Minutes'},
            {'title': 'Idea & Generate', 'duration': '37 Minutes'},
            {'title': 'Idea & ReGenerate', 'duration': '54 Minutes'},
          ]
        },
        {
          'name': 'john',
          'title': 'Create\nBasic Design',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.redAccent,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '5 Minutes'},
            {'title': 'Creation Work', 'duration': '32 Minutes'},
            {'title': 'Idea & Generate', 'duration': '3 Minutes'},
            {'title': 'Create & Generate', 'duration': '47 Minutes'},
          ]
        },
      ]
    },
    {
      'name': 'UX Design',
      'total': 15,
      'detail':
      [
        {
          'name': 'Bhautik',
          'title': 'UI/UX\nFlowChart',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.green,
          'duration': '10h 43min',
          'prize': 126,
          'lessons': [
            {'title': 'Introduction', 'duration': '8 Minutes'},
            {'title': 'Ideation', 'duration': '23 Minutes'},
            {'title': 'Idea & Generate', 'duration': '34 Minutes'},
          ]
        },
        {
          'name': 'Joshef',
          'title': 'illustration\nWith Figma',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.white,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '15 Minutes'},
            {'title': 'Creation', 'duration': '13 Minutes'},
            {'title': 'Idea & Generate', 'duration': '37 Minutes'},
            {'title': 'Idea & ReGenerate', 'duration': '54 Minutes'},
          ]
        },
        {
          'name': 'john',
          'title': 'Create\nBasic Design',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.redAccent,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '5 Minutes'},
            {'title': 'Creation Work', 'duration': '32 Minutes'},
            {'title': 'Idea & Generate', 'duration': '3 Minutes'},
            {'title': 'Create & Generate', 'duration': '47 Minutes'},
          ]
        },
      ]
    },
    {
      'name': 'Development',
      'total': 25,
      'detail':
      [
        {
          'name': 'Bhautik',
          'title': 'UI/UX\nFlowChart',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.green,
          'duration': '10h 43min',
          'prize': 126,
          'lessons': [
            {'title': 'Introduction', 'duration': '8 Minutes'},
            {'title': 'Ideation', 'duration': '23 Minutes'},
            {'title': 'Idea & Generate', 'duration': '34 Minutes'},
          ]
        },
        {
          'name': 'Joshef',
          'title': 'illustration\nWith Figma',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.white,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '15 Minutes'},
            {'title': 'Creation', 'duration': '13 Minutes'},
            {'title': 'Idea & Generate', 'duration': '37 Minutes'},
            {'title': 'Idea & ReGenerate', 'duration': '54 Minutes'},
          ]
        },
        {
          'name': 'john',
          'title': 'Create\nBasic Design',
          'lesson': 'lessons'.length + 1,
          'bg': Colors.redAccent,
          'duration': '5h 53min',
          'prize': 258,
          'lessons': [
            {'title': 'Introduction', 'duration': '5 Minutes'},
            {'title': 'Creation Work', 'duration': '32 Minutes'},
            {'title': 'Idea & Generate', 'duration': '3 Minutes'},
            {'title': 'Create & Generate', 'duration': '47 Minutes'},
          ]
        },
      ]
    },
  ];

  dynamic couses = [];
  @override
  void initState() {
    super.initState();
    couses = list[0]['detail'];
    // list = [
    //   getTitleItem('UI Design', 23),
    //   getTitleItem('WebFlow', 15),
    //   getTitleItem('Development', 25),
    //   getTitleItem('UX Design', 25),
    // ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
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
                // children: list,
                children: list.map<Widget>((courses) {
                  return getTitleItem(courses['name'], courses['total'], courses['detail']);
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                // scrollDirection: Axis.vertical,
                child: UICards(couses),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
