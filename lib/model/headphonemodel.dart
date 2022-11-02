import 'dart:ui';

import 'package:flutter/material.dart';

class Headphonemodel{
  int id;
  String image;
  String name;
  double price;
  List<Color>colors;
  String description;
  Headphonemodel({required this.id,required this.image,required this.description,required this.name,required this.price,required this.colors});

}



List<Headphonemodel> headphonelist=[
  Headphonemodel(id: 1,name:"MDR-RF895RK" ,image:"assets/images/headphone0.png",price: 150,colors:   [Colors.red,Colors.black,Colors.brown],description: "Headphones are a pair of small loudspeaker drivers worn on or around the head over a user's ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound." ),
  Headphonemodel(id: 2,name:"WH-1000XM" ,image:"assets/images/headphone1.webp",price: 160,colors:   [Colors.yellow,Colors.pink,Colors.brown,Colors.blueGrey],description: "Headphones are a pair of small loudspeaker drivers worn on or around the head over a user's ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound." ),
  Headphonemodel(id: 3,name:"WH-XB910NK" ,image:"assets/images/headphone2.png",price: 130,colors:  [Colors.greenAccent,Colors.black,Colors.brown],description: "Headphones are a pair of small loudspeaker drivers worn on or around the head over a user's ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound." ),
  Headphonemodel(id: 4,name:"WH-1000XM4" ,image:"assets/images/headphone3.webp",price: 120,colors:   [Colors.red,Colors.black,Colors.brown],description: "Headphones are a pair of small loudspeaker drivers worn on or around the head over a user's ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound." ),
  Headphonemodel(id: 5,name:"MDR-Z7M2" ,image:"assets/images/headphone4.webp",price: 122,colors:   [Colors.red,Colors.black,Colors.brown],description: "Headphones are a pair of small loudspeaker drivers worn on or around the head over a user's ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound." )


];

List<Color>headphonebg=[const Color(0xffc5d5f0), const  Color(0xffc1dbe3),Colors.grey.shade300,const Color(0xffd6d5c3),Colors.white  ];
