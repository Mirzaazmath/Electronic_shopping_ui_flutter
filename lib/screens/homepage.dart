import 'package:applainces/screens/watch.dart';
import 'package:applainces/widget/appstrings.dart';
import 'package:flutter/material.dart';

import 'camera.dart';
import 'headphone.dart';
import 'mobile.dart';

class HomePage extends StatefulWidget {
 const   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController(initialPage: 0);
  int pagechanged = 0;
  List<String>catagory=["Mobile","Headphone","Camera","Watch",];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            pinned: true,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background:Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  SizedBox(height: 60,),
                    Text(Appstrings().electronic,style: Theme.of(context).textTheme.headline1,),
          Container(
                       margin:const  EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30)

                        ),
                        padding:const  EdgeInsets.symmetric(horizontal: 10),

                        height: 50,
                        child: Row(
                          children: [
                           const  Icon(Icons.search_outlined),
                          const  SizedBox(width: 10,),
                           Expanded(child:  TextFormField(
                             decoration: const InputDecoration(
                                 hintText: "Search product name",
                                 border: InputBorder.none),
                           )),
                           ],
                        ),

                      ),
                   const  SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(

                          children:items()

                      ),
                    ),



                  ],
                ),
              )
            ),
            backgroundColor: Colors.grey[100],
            leading: Icon(Icons.sort,color: Theme.of(context).primaryColor,),
              actions: [

                InkWell(
                    child: Icon(Icons.shopping_bag_outlined,color: Theme.of(context).primaryColor,)),
               const SizedBox(width: 10,),

              ],
          ),
          SliverToBoxAdapter(
            child:Column(

            ) ,
          ),
          SliverToBoxAdapter(
            child:  Container(
              padding: EdgeInsets.all(15),
             height: 1100,


                child: PageView(

                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      pagechanged = index;
                    });
                  },
                  children: const  [ Mobile(), Headphone(),Camera(),Watch()],
                ),
              ),
            ),
          

        ],
      )

    );
  }

 List<Widget>items(){
   List<Widget>list=[];
   for(int i=0;i<catagory.length;i++){
     list.add(InkWell(
         onTap: () {
           controller.animateToPage(i,
               duration: const Duration(milliseconds: 200),
               curve: Curves.bounceInOut);
         },
         child: Container(
           margin:const  EdgeInsets.symmetric(horizontal: 20),
           padding: const EdgeInsets.only(bottom: 2),
           decoration: BoxDecoration(
               border: Border(
                   bottom: BorderSide(
                       color: pagechanged == i
                           ? Colors.black
                           : Colors.transparent,
                       width: 2))),
           child: Text(
               catagory[i],
               style: TextStyle(
                 fontSize: 16,
                 color: pagechanged == i
                     ? Colors.black
                     : Colors.grey,
                 fontWeight: FontWeight.w500,)
             // fontFamily: "SourceSanspro"),
           ),
         )),
     );
   }
   return list;


 }
}
