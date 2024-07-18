import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadethTab.dart';
import 'package:islami_app/Home/hadeth/iteamHadethDetails.dart';
import 'package:islami_app/Home/quran/iteamSuraDetails.dart';
import 'package:islami_app/Home/quran/itemSuraName.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';

class Hadethdetailsscreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
      var provider = Provider.of<Appconfgprovider>(context);
    return Stack(children: [
       provider.isDarkMode()
          ? Image.asset('assets/images/dark bg.png',
              width: double.infinity, height: double.infinity, fit: BoxFit.fill)
          : Image.asset('assets/images/main_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill),
      Scaffold(
        appBar: AppBar(
          title: Text(args.title, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.06,
                    vertical: MediaQuery.of(context).size.height * 0.05),
                decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? AppColors.primaryDarkColor
                        : AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(24)),
                child: ListView.builder(
                 
                  itemBuilder: (context, index) {
                    return Iteamhadethdetails(content: args.content[index]);
                  },
                  itemCount: args.content.length,
                ),
              ),
      ),
    ]);
  }
}
