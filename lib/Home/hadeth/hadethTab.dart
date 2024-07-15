

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/hadeth/itemHadethName.dart';
import 'package:islami_app/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Hadethtab extends StatefulWidget {
  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if(ahadethList.isEmpty){
    loadHadethFile();}
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth logo.png')),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child:
          ahadethList.isEmpty?Center(child: CircularProgressIndicator(color: AppColors.primaryLightColor,)):
          
           ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: AppColors.primaryLightColor,
                thickness: 2,
              );
            },
            itemBuilder: (context, index) {
              return Itemhadethname(hadeth: ahadethList[index]);
            },
            itemCount: ahadethList.length,
          ),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String hadethes = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = hadethes.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      ahadethList.add(hadeth);
      setState(() {
        
      });
    }
  }
}

class Hadeth {
  String title;
  List<String> content;
  Hadeth({required this.title, required this.content});
}
