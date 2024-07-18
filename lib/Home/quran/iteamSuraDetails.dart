import 'package:flutter/material.dart';
import 'package:islami_app/Home/quran/suraDetailsScreen.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';

class Iteamsuradetails extends StatelessWidget {
  String content;
  int index;
  Iteamsuradetails({required this.content, required this.index});
  @override
  Widget build(BuildContext context) {
     var provider = Provider.of<Appconfgprovider>(context);
    return Text(
      '$content (${index + 1})',
      textAlign: TextAlign.center,
      style: provider.isDarkMode()?
      Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.yellowColor)
      :Theme.of(context).textTheme.bodySmall,
      textDirection: TextDirection.rtl,
    );
  }
}

