import 'package:app_new/API_CRUD/api_service.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      FutureBuilder(future: getAll(), builder: (context, snapshot) {
        if(snapshot.hasData){
          return ListView.builder(itemCount: 10, itemBuilder: (context, index){
            return InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => UserDetailPage(
              //           data: snapshot.data[index]),
              //     ),
              //   );
              // },
              child: Card(
                child: Container(
                  padding:  EdgeInsets.all(15),
                  child: Row(
                    children: [
                      // Text('name'),
                      Text(snapshot.data![index]['name']),
                      Expanded(child: Text('')),
                      // EditDelete(
                      //     data: snapshot.data[index],
                      //     context: context)
                    ],
                  ),
                ),
              ),
            );
          });
        }else{
          return Center(
          child: CircularProgressIndicator(),
          );
        }
      })
    );
  }
}
