import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatefulWidget {
  const Themebottomsheet({super.key});

  @override
  State<Themebottomsheet> createState() => _ThemebottomsheetState();
}

class _ThemebottomsheetState extends State<Themebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfgprovider>(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
              child: provider.appTheme==ThemeMode.dark
                  ? getsSelectedIteamWidget(
                      AppLocalizations.of(context)!.dark)
                  : getuUnSelectedIteamWidget(
                      AppLocalizations.of(context)!.dark)),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              child: provider.appTheme == ThemeMode.light
                  ? getsSelectedIteamWidget(AppLocalizations.of(context)!.light)
                  : getuUnSelectedIteamWidget(
                      AppLocalizations.of(context)!.light)),
        ],
      ),
    );
  }

  Widget getsSelectedIteamWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
             style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.primaryLightColor),),
        Icon(
          Icons.check,
          size: 25,
          color: AppColors.primaryLightColor,
        ),
      ],
    );
  }

  Widget getuUnSelectedIteamWidget(String text) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall!);
  }
}
