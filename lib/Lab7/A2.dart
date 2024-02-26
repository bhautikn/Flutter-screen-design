import 'package:flutter/material.dart';

class A2 extends StatefulWidget {
  A2({super.key});

  @override
  State<A2> createState() => _A2State();
}

class _A2State extends State<A2> {
  TextEditingController textData = TextEditingController();
  String name = "Your Text goes here...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                  },
                controller: textData,
              ),
              SizedBox(height: 20),
              Text(name),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  build(context);
                  },
                child: Text('Press It'),
              )
            ],
          )),
    );
  }
}
