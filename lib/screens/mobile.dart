import 'package:applainces/provider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/headphonemodel.dart';
import '../model/mobilemodel.dart';
import 'detailscreen.dart';


class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  bool isfav=false;
  @override
  Widget build(BuildContext context) {
    var favdata=context.watch<AllProviders>().favlist;
    print(favdata.length);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,


      children: [



    Container(
      height: 200,
      child: CarouselSlider.builder(
      itemCount:banner.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
      return SizedBox(
      width: MediaQuery.of(context).size.width,
      child:Image(
      image: AssetImage(banner[index]),fit: BoxFit.fill ,

      ),
      );


      },
      options: CarouselOptions(
      height: 150.0,
      /* enlargeCenterPage: true,*/
      autoPlay: true,
      /*aspectRatio: 16 / 9,*/
      autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration:const  Duration(milliseconds: 800),
      viewportFraction: 1,
      ),
      ),
    ),



        Container(
          height: 270,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: mobilelist.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailscreen(mobilelist[index], headphonebg[index],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Container(
                            padding:const  EdgeInsets.all(15),
                            height: 200,

                            width: 150,
                            decoration: BoxDecoration(
                               gradient: LinearGradient(
                                 colors: mobilebg[index],
                                 begin: Alignment.topRight,
                                 end: Alignment.bottomLeft,

                               ),

                                borderRadius: BorderRadius.circular(20)
                            ),

                            alignment: Alignment.center,


                            child:Column(


                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    favfun(favdata,mobilelist[index],context)
                                  ],
                                ),
                                Container(height: 120,width: 120,
                                  child: Image.asset(mobilelist[index].image),

                                ),

                              ],
                            )

                        ),
                        const  SizedBox(height: 10,),
                        Text(mobilelist[index].name,style:const  TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        const  SizedBox(height: 5,),
                        Text(mobilelist[index].price.toString())
                      ],
                    ),
                  ),
                );


              }),
        ),
        const  SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                "Recommended",
                style: TextStyle(
                  fontSize: 18,

                  color: Colors.black,

                  fontWeight: FontWeight.w500,)),
            Text("view all",style: TextStyle(color: Colors.grey,fontSize: 16))

          ],

        ),
        SizedBox(height: 30,),
        Stack(
          children: [

            Column(
              children: [
                const  SizedBox(height: 70,),
                Container(
                  padding:const  EdgeInsets.all(20),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient:const  LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                         Colors.black,
                          Colors.black,
                        ],
                      )

                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:const [
                      Text("Iphone 14 pro",style: TextStyle(color: Colors.white),),
                      Text("Dynamic Island",style: TextStyle(color: Colors.white,fontSize: 20),)
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
            left: -20,
            child: Container(
    height: 240,

              child:   Image.asset("assets/images/apple.png"),)

    ),


          ],
        ),
        const  SizedBox(height: 10,),
        Container(
          height: 270,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: mobilelist.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailscreen(mobilelist[index], headphonebg[index],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Container(
                            padding:const  EdgeInsets.all(15),
                            height: 200,

                            width: 150,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: mobilebg[index],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                ),

                                borderRadius: BorderRadius.circular(20)
                            ),

                            alignment: Alignment.center,


                            child:Column(


                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(child: Icon(Icons.favorite_outline,color: Colors.white,),)
                                  ],
                                ),
                                Container(height: 120,width: 120,
                                  child: Image.asset(mobilelist[index].image),

                                ),

                              ],
                            )

                        ),
                        const  SizedBox(height: 10,),
                        Text(mobilelist[index].name,style:const  TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        const  SizedBox(height: 5,),
                        Text(mobilelist[index].price.toString())
                      ],
                    ),
                  ),
                );


              }),
        ),



      ],
    );
  }

  Widget favfun(var favdata, var data,context){
   for(int i=0;i<favdata.length;i++){

       if(favdata[i].id==data.id){

         isfav=true;


       }else{
         isfav=false;
       }

   }


 return isfav? const  InkWell(child:

    Icon(

      Icons.favorite,color: Colors.red,),):const InkWell(child:

 Icon(

   Icons.favorite_outline,color: Colors.white,),);
  }
}
