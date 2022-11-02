

import 'package:flutter/material.dart';


class Watchmodel{
  int id;
  String image;
  String name;
  double price;
  List<Color>colors;
  String description;
  Watchmodel({required this.id,required this.image,required this.description,required this.name,required this.price,required this.colors});

}



List<Watchmodel> superherolist=[
  Watchmodel(id: 21,name:"Iron Man" ,image:"assets/images/s1.png",price: 350,colors:   [Colors.red,Colors.black,Colors.brown],description: "A smartwatch is a wearable computer in the form of a watch; modern smartwatches provide a local touchscreen interface for daily use, while an associated smartphone app provides for management and telemetry (such as long-term biomonitoring). While early models could perform basic tasks, such as calculations, digital time telling, translations, and game-playing" ),
  Watchmodel(id: 22,name:" Captain America" ,image:"assets/images/s2.png",price: 260,colors:   [Colors.yellow,Colors.pink,Colors.brown,Colors.blueGrey],description: "A smartwatch is a wearable computer in the form of a watch; modern smartwatches provide a local touchscreen interface for daily use, while an associated smartphone app provides for management and telemetry (such as long-term biomonitoring). While early models could perform basic tasks, such as calculations, digital time telling, translations, and game-playing" ),
  Watchmodel(id: 23,name:"Black Panther" ,image:"assets/images/s3.png",price: 230,colors:  [Colors.greenAccent,Colors.black,Colors.brown],description: "A smartwatch is a wearable computer in the form of a watch; modern smartwatches provide a local touchscreen interface for daily use, while an associated smartphone app provides for management and telemetry (such as long-term biomonitoring). While early models could perform basic tasks, such as calculations, digital time telling, translations, and game-playing" ),
  Watchmodel(id: 24,name:"X-men" ,image:"assets/images/s4.png",price: 420,colors:   [Colors.red,Colors.black,Colors.brown],description: "A smartwatch is a wearable computer in the form of a watch; modern smartwatches provide a local touchscreen interface for daily use, while an associated smartphone app provides for management and telemetry (such as long-term biomonitoring). While early models could perform basic tasks, such as calculations, digital time telling, translations, and game-playing" ),
  Watchmodel(id: 25,name:"Spider Man" ,image:"assets/images/s5.png",price: 122,colors:   [Colors.red,Colors.black,Colors.brown],description: "A smartwatch is a wearable computer in the form of a watch; modern smartwatches provide a local touchscreen interface for daily use, while an associated smartphone app provides for management and telemetry (such as long-term biomonitoring). While early models could perform basic tasks, such as calculations, digital time telling, translations, and game-playing" )


];
List<Color>superbg=[const Color(0xffc5d5f0), const  Color(0xffc1dbe3),Colors.grey.shade300,const Color(0xffd6d5c3),const Color(0xffffdde1) ];

