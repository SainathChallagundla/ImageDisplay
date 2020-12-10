import 'BottomNavigationBar/About.dart';
import 'BottomNavigationBar/Contact.dart';
import 'BottomNavigationBar/Home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final mainKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: getBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        highlightElevation: 2.0,
        focusColor: Colors.teal,
        backgroundColor: Colors.white,
        foregroundColor: Colors.tealAccent,
        tooltip: 'Home',
        child: Icon(Icons.image_outlined),
        elevation: 2.0,
      ),
    );
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        // Respond to item press.
        setState(() => _currentIndex = value);
      },
      currentIndex: _currentIndex, // new
      items: [
        new BottomNavigationBarItem(
          icon: Icon(Icons.info),
          title: Text('AboutUs'),
        ),
        new BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit),
          title: Text('Contact'),
        )
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
