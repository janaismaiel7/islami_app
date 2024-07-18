import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class MyThemedata{
  static final ThemeData lightmode= ThemeData(
    canvasColor: AppColors.primaryLightColor,
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.blackColor
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryLightColor,
      selectedItemColor: AppColors.blackColor,
     
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 25,
        fontWeight: FontWeight.w700
      ),
      bodySmall: TextStyle(
        color: AppColors.blackColor,
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
      labelMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize:25,
        fontWeight: FontWeight.w700,
        
      )
    ),
  
  );
   static final ThemeData darkMode= ThemeData(
    canvasColor: AppColors.primaryDarkColor,
    primaryColor: AppColors.primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.whiteColor
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryDarkColor,
      selectedItemColor: AppColors.yellowColor,
     
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      bodyMedium: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 25,
        fontWeight: FontWeight.w700
      ),
      bodySmall: TextStyle(
       color: AppColors.whiteColor,
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
      labelMedium: TextStyle(
        color: AppColors.whiteColor,
        fontSize:25,
        fontWeight: FontWeight.w700,
        
      )
    ),
    
  );
}