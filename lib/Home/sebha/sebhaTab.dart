import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class sebhaTab extends StatelessWidget {
  const sebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    int counter=0;
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/body of seb7a.png',
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 57,
            ),
            Text(AppLocalizations.of(context)!.tasbehat),
            SizedBox(
              height: 20,
            ),
            Container(child: Text('30',style: TextStyle(color: Colors.white),
            ),
            padding:EdgeInsets.all(20) ,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(15) ,color: AppColors.primaryLightColor,),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'سبحان الله',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(AppColors.primaryLightColor),
                  minimumSize: WidgetStateProperty.all(Size(200, 60)),
                )),
            SizedBox(
              height: 57,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            )
          ],
        ),
      ],
    );
  }
}
