import 'package:flutter/material.dart';

import '../model/headphonemodel.dart';
import '../model/watchmodel.dart';
import 'detailscreen.dart';
class Watch extends StatefulWidget {
  const Watch({Key? key}) : super(key: key);

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [


            Column(
              children: [
               const  SizedBox(height: 30,),
                Container(
                  padding:const  EdgeInsets.all(25),
                  height: 147,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:  Color(0xffc1dbe3),
                    borderRadius: BorderRadius.circular(30),


                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Explore Latest",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                      Text("Smart Watch",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                     const  SizedBox(height: 10,),
                      Container(

                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:  Color(0xff06c1cf),
                        ),
                        child: Text("Explore",style: TextStyle(color: Colors.white),),

                      ),


                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: -60,
              bottom: 0,
              child:  Container(
                height: 180,
                child:  Image.asset("assets/images/man.png"),
              ),
            )

          ],
        ),
       const  SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const  [
            Text(
                "SuperHero Edition",
                style: TextStyle(
                  fontSize: 18,

                  color: Colors.black,

                  fontWeight: FontWeight.w500,)),
            Text("view all",style: TextStyle(color: Colors.grey,fontSize: 16))

          ],

        ),
        Container(
          height: 270,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: superherolist.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailscreen(superherolist[index], superbg[index],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Stack(
                          children: [
                            Column(

                              children: [
                                Container(
                                  height: 50,
                                ),

                                Container(
                                    padding:const  EdgeInsets.all(10),
                                    height: 180,

                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: superbg[index],

                                        borderRadius: BorderRadius.circular(20)
                                    ),

                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding:const  EdgeInsets.all(10),
                                      height: 80,
                                      width: double.infinity,
                                     decoration: BoxDecoration(
                                       color: Colors.grey[100],
                                       borderRadius: BorderRadius.circular(10)
                                     ),
                                    child: Row(
                                      children: [
                                      Expanded(
                                        child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          const  SizedBox(height: 10,),
                                          Text(superherolist[index].name,maxLines: 1,
                                            style:const  TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          const  SizedBox(height: 5,),
                                          Text(superherolist[index].price.toString())
                                        ],
                                        ),
                                      ),
                                        InkWell(
                                          child: Icon(Icons.favorite_outline,color: Colors.grey,),
                                        )
                                      ],
                                    ),
                                    ),


                                    // child:Column(
                                    //
                                    //
                                    //   children: [
                                    //     // Row(
                                    //     //   mainAxisAlignment: MainAxisAlignment.end,
                                    //     //   children: [
                                    //     //     InkWell(child: Icon(Icons.favorite_outline,color: Colors.white,),)
                                    //     //   ],
                                    //     // ),
                                    //     // Container(height: 120,width: 120,
                                    //     //   child: Image.asset(superherolist[index].image),
                                    //
                                    //     ),
                                    //
                                    //   ],
                                    // )

                                ),
                              ],
                            ),
                            Positioned(
                                right: 15,
                                child: Container(height: 140,width: 120,
                  child: Image.asset(superherolist[index].image),)),
                          ],
                        ),

                      ],
                    ),
                  ),
                );


              }),
        ),
      ],
    );
  }
}
