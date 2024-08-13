import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselDemo(),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  final List<String> imageList = [
    "https://previews.123rf.com/images/photochicken/photochicken2008/photochicken200800065/153425631-pritty-young-asian-photographer-girl-teen-travel-with-camera-trip-take-a-photo-tourist-lifestyle.jpg",
    "https://previews.123rf.com/images/photochicken/photochicken2008/photochicken200800065/153425631-pritty-young-asian-photographer-girl-teen-travel-with-camera-trip-take-a-photo-tourist-lifestyle.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider Demo'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imageList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 0.8,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
