import 'package:flutter/material.dart';

import '../model/cameramodel.dart';
import 'detailscreen.dart';
class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics:const  NeverScrollableScrollPhysics(),
      itemCount: Cameralist.length,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
    ),
      itemBuilder: (BuildContext context, int index){
        return


         InkWell(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailscreen(Cameralist[index], camrebg[index],)));
           },
           child: Container(

             decoration: BoxDecoration(
               borderRadius:BorderRadius.circular(20),
               // border: Border.all(color: Colors.grey)
             ),
             child: Column(
                children: [
                  Row(
                    children: [

                    ],
                  ),
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: camrebg[index],


                        borderRadius:const  BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                    ),
                    alignment: Alignment.center,
                    child:AspectRatio(
                        aspectRatio: 2,
                        child: Image.asset(Cameralist[index].image) ,)

                  ),
                  Container(
                    padding:const  EdgeInsets.symmetric(horizontal: 15,vertical: 2),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(20),bottomRight:  Radius.circular(20),),
                     color: camrebg[index],

                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const  SizedBox(height: 10,),
                        Text(Cameralist[index].name,style: TextStyle(color:camrebg[index]== Colors.white? Colors.black: Colors.white,fontWeight: FontWeight.bold),),

                       Row(
                         children: [
                           Expanded(child: Text(Cameralist[index].price.toString(),style: TextStyle(color:camrebg[index]== Colors.white? Colors.black: Colors.white,fontWeight: FontWeight.bold),)),
                       const  Icon(Icons.favorite_outline,size: 20,color: Colors.grey,)
                         ],
                       )
                      ],
                    ),

                  )
                ],



        ),
           ),
         );
      },  );
  }
}
