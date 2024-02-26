// import 'package:app_new/project_screen/HomePage.dart';
// import 'package:app_new/project_screen/mainScreen.dart';
import 'package:app_new/ToDo/main.dart';
import 'package:app_new/db/dbConnect.dart';
import 'package:app_new/project_screen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginScreen/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder(future: MyDatabase().initDatabase(), builder: (context, snapshot){
          if(snapshot.hasData){
              return InitScreen();
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        },)

        // home: FutureBuilder(
        //   future: SharedPreferences.getInstance(),
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       if(snapshot.data!.getBool('login') ?? false){
        //         return const MainScreen2();
        //       }else{
        //         return const MainScreen();
        //       }
        //     }
        //     else{
        //       return const CircularProgressIndicator();
        //     }
        //   },
        // )
    );
  }
}
