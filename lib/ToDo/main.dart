import 'package:app_new/ToDo/EditDelete.dart';
import 'package:app_new/ToDo/ListEntryPage.dart';
import 'package:app_new/ToDo/UserDetailPage.dart';
import 'package:app_new/db/dbConnect.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  bool refresh = false;
  bool searching = false;
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
        title:  Text('User List'),
      ),
      body: FutureBuilder(
          future: searching
              ? MyDatabase().search(searchContoller.text)
              : MyDatabase().getAll(),
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
                        Container(
                          padding:  EdgeInsets.all(15),
                          child: TextFormField(
                            onChanged: (data) {
                              setState(() {
                                if (data == '') {
                                  searching = false;
                                } else {
                                  searching = true;
                                }
                              });
                            },
                            controller: searchContoller,
                            decoration: InputDecoration(
                              contentPadding:  EdgeInsets.all(15),
                              border:  OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              hintText: 'Search',
                              prefixIcon:  Icon(Icons.search),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    searchContoller.text = '';
                                    searching = false;
                                  });
                                },
                                icon:  Icon(Icons.close),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UserDetailPage(
                                          data: snapshot.data[index]),
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    padding:  EdgeInsets.all(15),
                                    child: Row(
                                      children: [
                                        Text(snapshot.data[index]['name']),
                                         Expanded(child: Text('')),
                                        EditDelete(
                                            data: snapshot.data[index],
                                            context: context)
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
                            padding:  EdgeInsets.all(10),
                            margin:  EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.purple.shade50
                                ),
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
                              child:  Icon(
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
              return  Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

}
