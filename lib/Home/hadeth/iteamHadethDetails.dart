import 'package:flutter/material.dart';
import 'package:islami_app/Home/quran/suraDetailsScreen.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';

class Iteamhadethdetails extends StatelessWidget {
  String content;
  Iteamhadethdetails({required this.content, });
  @override
  Widget build(BuildContext context) {
      var provider = Provider.of<Appconfgprovider>(context);
    return Text(content,
      textAlign: TextAlign.center,
      style:  provider.isDarkMode()?
      Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.yellowColor)
      :Theme.of(context).textTheme.bodySmall,
      textDirection: TextDirection.rtl,
    );
  }
}

