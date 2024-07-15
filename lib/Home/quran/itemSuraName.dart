import 'package:flutter/material.dart';
import 'package:islami_app/Home/quran/suraDetailsScreen.dart';

class Itemsuraname extends StatelessWidget {
  String name;
  int index;
  Itemsuraname({required this.name,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Suradetailsscreen.routeName,
        arguments: suraDetailsArgs(name: name, 
        index: index));
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
class suraDetailsArgs{
  String name;
  int index;
  suraDetailsArgs({required this.name,required this.index});
}