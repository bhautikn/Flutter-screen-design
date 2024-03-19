import 'package:app_new/db_CRUD/ListEntryPage.dart';
import 'package:app_new/db/dbConnect.dart';
import 'package:flutter/material.dart';

Widget EditDelete({context, data}) {
  return Row(children: [
    InkWell(
      splashColor: Colors.teal.shade200,
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserListEntryPage(edit: true, data: data),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.teal.shade100,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.edit,
          color: Colors.teal,
        ),
      ),
    ),
    const SizedBox(width: 10),
    InkWell(
      splashColor: Colors.red.shade200,
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Alert!'),
              content: const Text('Are You Sure Want to delete'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    MyDatabase().deleteUser(data['id']);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.red.shade100,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    )
  ]);
}
