import 'package:app_new/project_screen/DetailCourse.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UICards extends StatefulWidget {
  dynamic couses = [];
  UICards(obj){
    couses = obj;
  }

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



  List<Widget> cardList = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.couses.length; i++) {
      cardList.add(getCard(widget.couses[i], context));
    }
    return Column(children: cardList);
  }
}
