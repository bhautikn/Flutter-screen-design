import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipe_widget/swipe_widget.dart';
import 'package:swipe_to/swipe_to.dart';

class DetailCource extends StatelessWidget {
  dynamic data;
  dynamic txtColor = Colors.white;
  dynamic bgColor = Colors.black12;
  dynamic iconColor = Colors.yellow;

  DetailCource(dynamic data, {super.key}) {
    this.data = data;
  }

  Widget getCourceCard(dynamic course) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${course["title"]}',
                style: TextStyle(
                  color: txtColor,
                  fontSize: 17,
                ),
              ),
              Text(
                '${course["duration"]}',
                style: TextStyle(
                  color: txtColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Expanded(child: Text('')),
          Icon(
            Icons.play_circle,
            color: txtColor,
            size: 40,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(200)),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: txtColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data['title'],
                    style: GoogleFonts.lato(
                      color: txtColor,
                      fontSize: 40,
                      height: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 150,
                    decoration: BoxDecoration(
                        color: data['bg'],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.watch_later,
                                color: Colors.green,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                data['duration'],
                                style: TextStyle(color: txtColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.list_alt,
                                color: Colors.green,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '${data["lesson"]} lessons',
                                style: TextStyle(color: txtColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Course Preview',
                    style: TextStyle(
                      color: txtColor,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    children: data['lessons'].map<Widget>((lesson) {
                      return getCourceCard(lesson);
                    }).toList(),
                  ),
                  const SizedBox(height: 130)
                ],
              ),
            ),
            Column(
              children: [
                const Expanded(child: Text('')),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Row(
                    children: [
                      SwipeTo(
                        iconOnRightSwipe: Icons.add,
                        offsetDx: 5,
                        swipeSensitivity: 35,
                        onRightSwipe: (details) {
                          print('Callback from Swipe To Left');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 8.0),
                          // padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(200)),
                          child: const Icon(
                            Icons.lock,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Swipe to unlock',
                        style: TextStyle(
                          color: txtColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(Icons.arrow_forward_ios_outlined,
                          color: txtColor, size: 15),
                      Icon(Icons.arrow_forward_ios_outlined,
                          color: txtColor, size: 20),
                      const Expanded(child: Text('')),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          '\$${data["prize"]}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
