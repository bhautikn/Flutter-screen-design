import 'package:app_new/ToDo/functions.dart';
import 'package:app_new/db/dbConnect.dart';
import 'package:flutter/material.dart';

class UserListEntryPage extends StatefulWidget {
  bool edit = false;
  dynamic data;

  UserListEntryPage({bool? edit, data, super.key}) {
    this.edit = edit ?? false;
    this.data = data;
  }

  @override
  State<UserListEntryPage> createState() => _UserListEntryPageState();
}

class _UserListEntryPageState extends State<UserListEntryPage> {
  final dynamic _key = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController detailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User list Entry'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'this filed is required';
                  } else {
                    return null;
                  }
                },
                controller: nameController
                  ..text = ((widget.edit) ? '${widget.data['name']}' : ''),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'this filed is required';
                  } else {
                    return null;
                  }
                },
                controller: ageController
                  ..text = ((widget.edit) ? '${widget.data['age']}' : ''),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                maxLines: 5,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'this filed is required';
                  } else {
                    return null;
                  }
                },
                controller: detailController
                  ..text = ((widget.edit) ? '${widget.data['detail']}' : ''),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Detail',
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_key.currentState.validate()) {
                        List data = [
                          nameController.text,
                          ageController.text,
                          detailController.text
                        ];
                        if (widget.edit) {
                          data.add(widget.data['id']);
                          await MyDatabase().updateOne(data);
                        } else {
                          await MyDatabase().insertOne(data);
                        }
                        showSnackBar(
                            context: context,
                            massage:
                                'Yay! Item ${widget.edit ? 'updated' : 'inserted'}!');
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text((widget.edit) ? 'Done' : 'Add'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
