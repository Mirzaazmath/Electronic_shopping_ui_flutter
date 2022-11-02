import 'package:flutter/cupertino.dart';



class AllProviders with ChangeNotifier {
  List<dynamic>favlist=[];
  get Favlist=> favlist;
  void favrotelist(var data){

    favlist.add(data);
    notifyListeners();


  }

}