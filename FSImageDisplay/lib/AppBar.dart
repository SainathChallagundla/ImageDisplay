import 'package:flutter/material.dart';

AppBar setAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(fontStyle: FontStyle.italic, fontFamily: 'Pacifico'),
    ),
  );
}
