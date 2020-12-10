import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'HomePage.dart';

void main() => runApp(new MaterialApp(
    theme: new ThemeData(
        primaryColor: Colors.tealAccent,
        primaryColorDark: Colors.tealAccent[900],
        accentColor: Colors.tealAccent),
    home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      photoSize: 90.0,
      loadingText: Text(
        'Welcome To The ImageDisplay ',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
      useLoader: false,
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      image: new Image.asset('assets/Images/GimpStStrokePink.png'),
      imageBackground:
          new AssetImage('assets/display images/Eiffel Tower.jpeg'),
      title: new Text(
        'Image Display',
        style: TextStyle(
            color: Colors.cyanAccent,
            decorationStyle: TextDecorationStyle.wavy,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
            fontSize: 50.0),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
/* */
