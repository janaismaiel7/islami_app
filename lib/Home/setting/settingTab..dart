import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Home/setting/languageBottomSheet.dart';
import 'package:islami_app/app_colors.dart';

class Settingtab extends StatefulWidget {
  const Settingtab({super.key});

  @override
  State<Settingtab> createState() => _SettingtabState();
}

class _SettingtabState extends State<Settingtab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: () {
              showLangBottomSheet();
            },
            child: Container(
            padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.english,style: Theme.of(context).textTheme.bodySmall,),
                  Icon(Icons.arrow_drop_down,size: 35,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  void showLangBottomSheet() {
  showModalBottomSheet(
    context: context, 
    builder: (context)=> Languagebottomsheet() );
}

}

