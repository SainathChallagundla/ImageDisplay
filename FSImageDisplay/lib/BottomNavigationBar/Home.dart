import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final List<String> imgList = [
    'assets/display images/DSC_0367.JPG',
    'assets/display images/DSC_0375.JPG',
    'assets/display images/DSC_0394.JPG',
    'assets/display images/DSC_0405.JPG',
    'assets/display images/DSC_0423.JPG',
    'assets/display images/DSC_0428.JPG',
    'assets/display images/DSC_0434.JPG',
    'assets/display images/DSC_0440.JPG',
    'assets/display images/DSC_0459.JPG',
    'assets/display images/DSC_0470.JPG',
    /*
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShIB-WvEXK-yI1Bjq4hjzX4LW1eG8qZpRORQ&usqp=CAU',
    'https://webmeup.com/upload/blog/lead-image-105.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj9OVfFV-S13jyB_BQfDkp3bQMg126UWHmpg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST5hVQfn-2qNasO-FGDdU7D7Lzbk3FoxVKUA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKpwjHwKehj-flvXyx07tVYxB1O8tZRl3Q0A&usqp=CAU',
    'https://image.shutterstock.com/image-photo/kerala-highway-road-260nw-1340086526.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNxOoRld85728ZwBNZ4vRQ9imf1NTvVmhnJw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTReFR3oJ5ZRyUEp40xgOQ1wotWP4QWiMtX5w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSEOg4NTS78xFTAk_f5pEbNtUpjq7d-fCmYg&usqp=CAU',
  */
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Image Display',
            style:
                TextStyle(fontFamily: 'Pacifico', fontStyle: FontStyle.italic),
          )),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.asset(
                        item,
                        gaplessPlayback: true,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
