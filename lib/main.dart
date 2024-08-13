import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MiAplicacion());

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Crisantos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselCrisantos(),
    );
  }
}

class CarouselCrisantos extends StatelessWidget {
  final List<String> imageList = [
    "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroApache.jpg",
    "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroElectrico.jpg",
    "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroMiltar.jpg",
    "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroPolicia.jpg",
    "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroRescate.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider Crisantos'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imageList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: const BoxDecoration(
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
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
