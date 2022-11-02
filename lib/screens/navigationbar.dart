import 'package:applainces/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/navigation/scroll_navigation.dart';
class Navigationclass extends StatelessWidget {
  const Navigationclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScrollNavigation(
      bodyStyle:const  NavigationBodyStyle(
        background: Color(0xff252626),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      barStyle: const NavigationBarStyle(

        background:Color(0xff252626),
        elevation: 0.0,
      ),
    identiferStyle:const  NavigationIdentiferStyle(
      color: Colors.white54,
      width: 1

  ),
      pages: [
        const HomePage(),
        Container(color: Colors.green[100]),
        Container(color: Colors.purple[100]),
        Container(color: Colors.amber[100]),

      ],
      items: const [
        ScrollNavigationItem(icon: Icon(Icons.home_outlined,color: Colors.white54,)),

        ScrollNavigationItem(icon: Icon(Icons.favorite_outline,color: Colors.white54,)),
        ScrollNavigationItem(icon: Icon(Icons.person_outline,color: Colors.white54,)),
        ScrollNavigationItem(icon: Icon(Icons.settings_outlined,color: Colors.white54,))
      ],
    );
  }
}


