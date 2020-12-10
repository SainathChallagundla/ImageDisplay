import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'HomePage.dart';

class Splashscree extends StatefulWidget {
  _Splahscreen createState() => _Splahscreen();
}

class _Splahscreen extends State<Splashscree> {
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
