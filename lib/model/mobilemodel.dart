import 'dart:ui';

import 'package:flutter/material.dart';

class MobileModel{
  int id;
  String image;
  String name;
  double price;
  List<Color>colors;
  String description;
  MobileModel({required this.id,required this.image,required this.description,required this.name,required this.price,required this.colors});

}



List<MobileModel> mobilelist=[
  MobileModel(id: 6,name:"TLC 100" ,image:"assets/images/mobile.png",price: 350,colors:   [Colors.red,Colors.black,Colors.brown],description: "A mobile phone, cellular phone, cell phone, cellphone, handphone, hand phone or pocket phone, sometimes shortened to simply mobile, cell, or just phone, is a portable telephone that can make and receive calls over a radio frequency link while the user is moving within a telephone service area." ),
  MobileModel(id: 7,name:"Redmi 11T" ,image:"assets/images/mobile1.png",price: 260,colors:   [Colors.yellow,Colors.pink,Colors.brown,Colors.blueGrey],description: "A mobile phone, cellular phone, cell phone, cellphone, handphone, hand phone or pocket phone, sometimes shortened to simply mobile, cell, or just phone, is a portable telephone that can make and receive calls over a radio frequency link while the user is moving within a telephone service area." ),
  MobileModel(id: 8,name:"Realme 10" ,image:"assets/images/mobile2.png",price: 230,colors:  [Colors.greenAccent,Colors.black,Colors.brown],description: "A mobile phone, cellular phone, cell phone, cellphone, handphone, hand phone or pocket phone, sometimes shortened to simply mobile, cell, or just phone, is a portable telephone that can make and receive calls over a radio frequency link while the user is moving within a telephone service area." ),
  MobileModel(id: 9,name:"Samsung A72" ,image:"assets/images/mobile4.webp",price: 420,colors:   [Colors.red,Colors.black,Colors.brown],description: "A mobile phone, cellular phone, cell phone, cellphone, handphone, hand phone or pocket phone, sometimes shortened to simply mobile, cell, or just phone, is a portable telephone that can make and receive calls over a radio frequency link while the user is moving within a telephone service area." ),
  MobileModel(id: 10,name:"MDR-Z7M2" ,image:"assets/images/mobile.png",price: 122,colors:   [Colors.red,Colors.black,Colors.brown],description: "A mobile phone, cellular phone, cell phone, cellphone, handphone, hand phone or pocket phone, sometimes shortened to simply mobile, cell, or just phone, is a portable telephone that can make and receive calls over a radio frequency link while the user is moving within a telephone service area." )


];

List<List<Color>>mobilebg=[
  [
    Color(0xffbdc3c7),
    Color(0xff2c3e50),
  ],
  [
    Color(0xffee9ca7),
    Color(0xffffdde1),
  ],
  [
    Color(0xff2193b0),
    Color(0xff6dd5ed),
  ],
  [
    Color(0xffD3CCE3),
    Color(0xffE9E4F0),
  ],
  [

    Color(0xff4CA1AF),
    Color(0xffC4E0E50),
  ]
];

List<String>banner=["assets/images/banner1.jpeg","assets/images/banner3.webp","assets/images/banner4.webp","assets/images/baner5.jpeg","assets/images/banner2.jpeg"];