import 'package:flutter/material.dart';

import '../model/headphonemodel.dart';
import 'detailscreen.dart';
class Headphone extends StatelessWidget {
  const Headphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,


      children: [
        Container(
          height: 270,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          itemCount: headphonelist.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailscreen(headphonelist[index], headphonebg[index],)));
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
                        color: headphonebg[index],

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
                            child: Image.asset(headphonelist[index].image),

                          ),

                        ],
                      )

                    ),
                   const  SizedBox(height: 10,),
                    Text(headphonelist[index].name,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   const  SizedBox(height: 5,),
                    Text(headphonelist[index].price.toString())
                  ],
                ),
              ),
            );


          }),
        ),
       const  SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const  [
          Text(
              "Recommended",
              style: TextStyle(
                fontSize: 18,

                color: Colors.black,

                fontWeight: FontWeight.w500,)),
          Text("view all",style: TextStyle(color: Colors.grey,fontSize: 16))

        ],

      ),
       const  SizedBox(height: 30,),
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
                         Color(0xff6782B4),
                         Color(0xffB1BFD8),
                       ],
                     )

                 ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:const [
                       Text("Limited Edition",style: TextStyle(color: Colors.white),),
                      Text("Silent White",style: TextStyle(color: Colors.white,fontSize: 20),)
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child:   Image.asset("assets/images/women.png"),)


          ],
        ),
       const  SizedBox(height: 10,),
        Container(
          height: 270,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: headphonelist.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailscreen(headphonelist[index], headphonebg[index],)));
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
                                color: headphonebg[index],

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
                                  child: Image.asset(headphonelist[index].image),

                                ),

                              ],
                            )

                        ),
                        const  SizedBox(height: 10,),
                        Text(headphonelist[index].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        const  SizedBox(height: 5,),
                        Text(headphonelist[index].price.toString())
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
