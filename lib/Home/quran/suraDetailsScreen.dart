import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/quran/iteamSuraDetails.dart';
import 'package:islami_app/Home/quran/itemSuraName.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';

class Suradetailsscreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<Suradetailsscreen> createState() => _SuradetailsscreenState();
}

class _SuradetailsscreenState extends State<Suradetailsscreen> {
  List<String> versus = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfgprovider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if (versus.isEmpty) {
      loadFile(args.index);
    }
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
          title: Text(args.name, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: versus.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: AppColors.primaryLightColor,
              ))
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.06,
                    vertical: MediaQuery.of(context).size.height * 0.05),
                decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? AppColors.primaryDarkColor
                        : AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(24)),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: provider.isDarkMode()
                          ? AppColors.yellowColor
                          : AppColors.whiteColor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Iteamsuradetails(
                        content: versus[index], index: index);
                  },
                  itemCount: versus.length,
                ),
              ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    versus = lines;
    setState(() {});
  }
}
