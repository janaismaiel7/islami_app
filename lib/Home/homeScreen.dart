import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadethTab.dart';
import 'package:islami_app/Home/quran/quranTab.dart';
import 'package:islami_app/Home/radio/radioTab.dart';
import 'package:islami_app/Home/sebha/sebhaTab.dart';
import 'package:islami_app/app_colors.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = 'homes_screen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami', style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {
                    
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/quran.png')),
                      label: 'Quran'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                      label: 'hadeth'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                      label: 'sebha'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/radio.png')),
                      label: 'radio'),
                ]),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }
}
List<Widget> tabs =[
  Qurantab(),Hadethtab(),sebhaTab(),Radiotab()
];
