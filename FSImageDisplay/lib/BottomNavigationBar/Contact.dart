import 'package:flutter/material.dart';
import 'package:FSImageDisplay/AppBar.dart';
import 'package:styled_text/styled_text.dart';

class Contact extends StatefulWidget {
  ContactState createState() => ContactState();
}

class ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setAppBar('Contact Us'),
      body: Center(
        child: StyledText(
            newLineAsBreaks: true,
            maxLines: 50,
            textAlign: TextAlign.center,
            text:
                "<bold>Name:</bold>Sainath Challagundla\n<bold>Mail:</bold>nathsai1027@gmail.com\n<bold>Phone:</bold>8888888888",
            styles: {
              'bold': TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              )
            }),
      ),
    );
  }
}
