import 'package:applainces/provider.dart';
import 'package:applainces/screens/homepage.dart';
import 'package:applainces/screens/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => AllProviders(),
      )
    ],
    child: const MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.black87),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),

        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Navigationclass(),
    );
  }
}
