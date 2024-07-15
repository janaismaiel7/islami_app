import 'package:flutter/material.dart';

class Appconfgprovider extends ChangeNotifier{
  String appLang='en';


  void changeLang(String newLang){
    if(appLang==newLang){
      return;
    }
    appLang=newLang;
    notifyListeners();

  }

}