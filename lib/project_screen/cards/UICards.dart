import 'package:app_new/project_screen/DetailCourse.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class UICards extends StatefulWidget {
  const UICards({super.key});

  @override
  State<UICards> createState() => _UICardsState();
}

class _UICardsState extends State<UICards> {
  Widget getCard(obj, context) {
    var name = obj['name'];
    var title = obj['title'];

    var bgColor = obj['bg'];
    var textColor =
        (ThemeData.estimateBrightnessForColor(bgColor) == Brightness.dark)
            ? Colors.white
            : Colors.black;

    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 250,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // Image(image: image),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title',
                style: TextStyle(
                  color: textColor,
                  fontSize: 30,
                  height: 1,
                ),
              ),
              Text(
                'By $name',
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const Expanded(child: Text('')),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(200)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailCource(obj),
                    ));
                  },
                  child: Row(
                    children: [
                      Text('Start Learning',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                      const Expanded(child: Text('')),
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(400),
                            color: Colors.white),
                        child: const Icon(Icons.play_arrow_rounded),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  dynamic couses = [
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
  ];

  List<Widget> cardList = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < couses.length; i++) {
      cardList.add(getCard(couses[i], context));
    }
    return Column(children: cardList);
  }
}
