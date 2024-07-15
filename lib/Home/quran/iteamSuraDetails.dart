import 'package:flutter/material.dart';
import 'package:islami_app/Home/quran/suraDetailsScreen.dart';

class Iteamsuradetails extends StatelessWidget {
  String content;
  int index;
  Iteamsuradetails({required this.content, required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      '$content (${index + 1})',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
      textDirection: TextDirection.rtl,
    );
  }
}

