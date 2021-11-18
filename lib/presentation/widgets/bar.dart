import 'package:flutter/material.dart';

AppBar bar() {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.close),
      onPressed: () {},
    ),
    title: Text('1 selected'),
    actions: [
      IconButton(
        icon: Icon(Icons.file_upload),
        onPressed: () {},
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {},
        ),
      ),
    ],
    backgroundColor: Colors.black87,
  );
}
