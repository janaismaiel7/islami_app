import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';
class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Appconfgprovider>(context);
    return
     Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
            provider.changeLang('en');
            },
            child: provider.appLang== 'en'?getSelectedIteamWidget(AppLocalizations.of(context)!.english):
            getUnSelectedIteamWidget(AppLocalizations.of(context)!.english
            )
          ),
          SizedBox(height: 15,),
           InkWell(
            onTap: (){
              provider.changeLang('ar');
            },
             child: provider.appLang== 'ar'?getSelectedIteamWidget(AppLocalizations.of(context)!.arabic):
            getUnSelectedIteamWidget(AppLocalizations.of(context)!.arabic
            )
           ),
          
        ],
      ),
     );
  }

  Widget getSelectedIteamWidget(String text){
    return
Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.primaryLightColor
              )),
                Icon(Icons.check,size: 25,color: 
                AppColors.primaryLightColor,),
                
              ],
            );
  }
  Widget getUnSelectedIteamWidget(String text){
    return Text(text,style: Theme.of(context).textTheme.bodySmall!);
  }
}