import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadethDetailsScreen.dart';
import 'package:islami_app/Home/hadeth/hadethTab.dart';


class Itemhadethname extends StatelessWidget {
  Hadeth hadeth;
  Itemhadethname({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Hadethdetailsscreen.routeName,
        arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
