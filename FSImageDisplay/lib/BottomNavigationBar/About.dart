import 'package:flutter/material.dart';
import 'package:FSImageDisplay/AppBar.dart';

class About extends StatefulWidget {
  AboutState createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setAppBar('About Us'),
    );
  }
}
