
import 'package:applainces/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Detailscreen extends StatefulWidget {
  var item;
  dynamic _colors;

  Detailscreen(this.item,this._colors,);



  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> with SingleTickerProviderStateMixin{
  bool isfav=false;
  late AnimationController _animationController;
  late Animation<Color?> _coloranimation;
  late Animation<double> _sizeanimation;
  int qty=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 300));
    _coloranimation=ColorTween(begin: Colors.grey[400],end: Colors.red).animate(_animationController);
    _sizeanimation = TweenSequence(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween(begin: 30,end: 50),
            weight: 50,
          ), TweenSequenceItem<double>(
          tween: Tween(begin: 50,end: 30),
          weight: 50,
        ),
        ]
    ).animate(_animationController);
    _animationController.addListener(() {

    });
    _animationController.addStatusListener((status) {
      //here we changing the bool value depending on  status
      if(status==AnimationStatus.completed) {
        setState(() {
          isfav = true;
        });
      }
      if(status==AnimationStatus.dismissed){
        setState(() {
          isfav=false;

        });
      }

    });
    @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
      _animationController.dispose();
    }
  }
  @override
  Widget build(BuildContext context) {
   print(widget.item.id);
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(

        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child:const  Icon(Icons.arrow_back_ios,color: Colors.black,),),
        actions: [

          InkWell(
              child: Icon(Icons.shopping_bag_outlined,color: Theme.of(context).primaryColor,)),
          const SizedBox(width: 10,),

        ],
        backgroundColor:widget._colors,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Stack(
            children: [
              Container(
                padding:const  EdgeInsets.all(10),

                height: MediaQuery.of(context).size.height*0.57,
                decoration: BoxDecoration(
                    color: widget._colors,
                    borderRadius:const BorderRadius.vertical(bottom: Radius.circular(30))
                ),

                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.grey[200],
                     ),
                      child: AnimatedBuilder(
                        animation: _animationController,
                        builder: (BuildContext context,_){
                          return  IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color:_coloranimation.value,
                              size: _sizeanimation.value,
                            ),
                            onPressed: () {
                              isfav? reverseanimation(widget.item): forwordanimation();
                            },
                          );
                        },

                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  child: Container(
                    padding:const  EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height*0.50,
                      child: Image.asset(widget.item.image)
                  ))
            ],
          ),

          Container(
            padding:const  EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(children: [
              Expanded(child: Text(widget.item.name,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)),
              Text(widget.item.price.toString(),style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
            ],),
             const  SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      children: collist()
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          decreament();
                        },
                        child: Container(

                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey[200],
                          ),
                          child: Icon(Icons.remove,color: Colors.grey[400],),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(qty.toString()),

                      ),
                      InkWell(onTap: (){
                        increament();
                      },
                        child: Container(

                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey[200],
                          ),
                          child: Icon(Icons.add,color: Colors.grey[400],),
                        ),
                      )
                    ],
                  )
                ],
              ),
             const  SizedBox(height: 20,)
,            Text(widget.item.description,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),),

              InkWell(
                child: Container(
                  margin:const  EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                  ),
                  alignment: Alignment.center,
                  child: const Text("ADD TO BASKET",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),

                ),
              )
            ],
            ),
          )
          ],
        ),
      ),

    );
  }
  List<Widget> collist(){
    List<Widget> itemlist=[];
    for(int i=0;i<widget.item.colors.length;i++){
      itemlist.add(Container(
        margin:const  EdgeInsets.symmetric(horizontal: 7),
        height: 20,
        width: 20,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(7),
         color: widget.item.colors[i],
       ),
      ));



    }
    return itemlist;
  }
  void increament (){
    setState(() {
      qty++;

    });

  }
  void decreament(){
    if(qty==1){

    }else{
      setState(() {
        qty--;

      });
    }


  }
  void reverseanimation(var data){
    _animationController.reverse();
    context.read<AllProviders>().favrotelist(data);
  }
  void forwordanimation(){
    _animationController.forward();
  }
}
