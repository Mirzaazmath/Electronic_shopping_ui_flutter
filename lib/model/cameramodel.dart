import 'dart:ui';

import 'package:flutter/material.dart';

class Camaramodel{
  int id;
  String image;
  String name;
  double price;
  List<Color>colors;
  String description;
  Camaramodel({required this.id,required this.image,required this.description,required this.name,required this.price,required this.colors});

}



List<Camaramodel> Cameralist=[
  Camaramodel(id: 11,name:"TLC 100" ,image:"assets/images/c1.png",price: 150,colors:   [Colors.red,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 12,name:"dji OM4 SE 3" ,image:"assets/images/c2.webp",price: 220,colors:   [Colors.yellow,Colors.pink,Colors.brown,Colors.blueGrey],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 13,name:"Axis Gimbal  (230)" ,image:"assets/images/c3.png",price: 170,colors:  [Colors.greenAccent,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 14,name:"Canon EOS 3000D " ,image:"assets/images/c4.png",price: 330,colors:   [Colors.red,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 15,name:"MDR-Z7M2" ,image:"assets/images/c1.png",price: 142,colors:   [Colors.red,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 16,name:"TLC 100" ,image:"assets/images/c2.webp",price: 150,colors:   [Colors.red,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 17,name:"OMAX 58mm" ,image:"assets/images/c3.png",price: 220,colors:   [Colors.yellow,Colors.pink,Colors.brown,Colors.blueGrey],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 18,name:"xcnc 10" ,image:"assets/images/c4.png",price: 170,colors:  [Colors.greenAccent,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 19,name:"nkak A72" ,image:"assets/images/c1.png",price: 330,colors:   [Colors.red,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." ),
  Camaramodel(id: 20,name:"MDR-Z7M2" ,image:"assets/images/c2.webp",price: 142,colors:   [Colors.red,Colors.black,Colors.brown],description: "A camera is an optical instrument that can capture an image. Most cameras can capture 2D images, with some more advanced models being able to capture 3D images. At a basic level, most cameras consist of sealed boxes (the camera body), with a small hole (the aperture) that allows light to pass through through in order to capture an image on a light-sensitive surface (usually a digital sensor or photographic film)." )



];

List<Color>camrebg=[const Color(0xffc5d5f0),Colors.white, const  Color(0xffc1dbe3),Colors.grey.shade300,const Color(0xffd6d5c3),Colors.white ,const Color(0xffc5d5f0) , const  Color(0xffc1dbe3),Colors.grey.shade300,Colors.white];
