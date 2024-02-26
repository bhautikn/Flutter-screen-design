import 'package:app_new/ToDo/EditDelete.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatefulWidget {
  dynamic data;

  UserDetailPage({data, super.key}) {
    this.data = data;
  }

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${widget.data['name']}',
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      'Age: ${widget.data['age']}',
                    ),
                    Text(
                      'Detail: ${widget.data['detail']}',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Expanded(child: Text('')),
                EditDelete(data: widget.data, context: context)
              ],
            )
          ],
        ),
      ),
    );
  }
}
