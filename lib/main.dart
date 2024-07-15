import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadethDetailsScreen.dart';
import 'package:islami_app/Home/homeScreen.dart';
import 'package:islami_app/Home/quran/suraDetailsScreen.dart';
import 'package:islami_app/MythemeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routeName,
      routes: {
        Homescreen.routeName: (context) => Homescreen(),
        Suradetailsscreen.routeName: (context) => Suradetailsscreen(),
        Hadethdetailsscreen.routeName: (context) => Hadethdetailsscreen()
      },
      theme: MyThemedata.lightmode,
    );
  }
}
