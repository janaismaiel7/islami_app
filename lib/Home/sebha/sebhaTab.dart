import 'dart:math';
import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int tasbehCounter = 0;
  List<String> zaker = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لا اله الا الله",
    "الحمد لله"
  ];

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter >= 33) {
        counter = 0;
        tasbehCounter = (tasbehCounter + 1) % zaker.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
         
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/images/head of sab7a.png',
                  fit: BoxFit.contain,
                ),
                Transform.translate(
                  offset: Offset(0, 75), 
                  child: Transform.rotate(
                    angle: (counter * pi / 16),
                    child: Image.asset(
                      'assets/images/body of seb7a.png',
                     
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Text(AppLocalizations.of(context)!.tasbehat),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.primaryLightColor,
              ),
              child: Text(
                '$counter',
                style: TextStyle(color:AppColors.blackColor),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text(
                zaker[tasbehCounter],
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primaryLightColor),
                minimumSize: WidgetStateProperty.all(Size(200, 60)),
              ),
            ),
            SizedBox(height: 57),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ],
        );
    
  }
}
