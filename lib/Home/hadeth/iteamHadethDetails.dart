import 'package:flutter/material.dart';
import 'package:islami_app/Home/quran/suraDetailsScreen.dart';

class Iteamhadethdetails extends StatelessWidget {
  String content;
  Iteamhadethdetails({required this.content, });
  @override
  Widget build(BuildContext context) {
    return Text(content,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
      textDirection: TextDirection.rtl,
    );
  }
}

