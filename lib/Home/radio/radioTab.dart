import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Radiotab extends StatelessWidget {
  const Radiotab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/radio x(2).png',
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 57,
        ),
        Text(AppLocalizations.of(context)!.radio),
        SizedBox(
          height: 57,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                  color: AppColors.primaryLightColor,
                  size: 40,
                )),
            SizedBox(
              width: 15,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow,
                    color: AppColors.primaryLightColor, size: 60)),
            SizedBox(
              width: 15,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_next,
                    color: AppColors.primaryLightColor, size: 40)),
          ],
        )
      ],
    );
  }
}
