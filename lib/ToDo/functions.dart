import 'package:flutter/material.dart';

void showSnackBar({context, massage}){
  final snackBar = SnackBar(
    content: Text(massage),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

