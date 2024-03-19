import 'package:app_new/API_CRUD/EditDelete.dart';
import 'package:app_new/API_CRUD/ListEntryPage.dart';
import 'package:app_new/API_CRUD/UserDetailPage.dart';
import 'package:app_new/API_CRUD/api_service.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  bool refresh = false;
  TextEditingController searchContoller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: FutureBuilder(
          future: getAll(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    refresh = !refresh;
                  });
                },
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UserDetailPage(
                                          data: snapshot.data![index]),
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    child: Row(
                                      children: [
                                        Text(snapshot.data![index]['name']),
                                        Expanded(child: Text('')),
                                        EditDelete(
                                            data: snapshot.data![index],
                                            context: context,
                                            onDelete: () {
                                              setState(() {});
                                            })
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.purple.shade50),
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(10),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        UserListEntryPage(edit: false),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
