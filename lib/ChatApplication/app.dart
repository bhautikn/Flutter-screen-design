import 'package:app_new/ChatApplication/Database/ChatDatabase.dart';
import 'package:app_new/ChatApplication/ChatList/chatList.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ChatDatabase().getChats(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ChatList(list: snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
