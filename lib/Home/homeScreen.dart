import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadethTab.dart';
import 'package:islami_app/Home/quran/quranTab.dart';
import 'package:islami_app/Home/radio/radioTab.dart';
import 'package:islami_app/Home/sebha/sebhaTab.dart';
import 'package:islami_app/Home/setting/settingTab..dart';
import 'package:islami_app/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = 'homes_screen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfgprovider>(context);

    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset('assets/images/dark bg.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill)
            : Image.asset('assets/images/main_background.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/quran.png')),
                      label: AppLocalizations.of(context)!.quran),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                      label: AppLocalizations.of(context)!.hadeth),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                      label: AppLocalizations.of(context)!.sebha),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/radio.png')),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings),
                ]),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }
}

List<Widget> tabs = [
  Qurantab(),
  Hadethtab(),
  SebhaTab(),
  Radiotab(),
  Settingtab()
];
