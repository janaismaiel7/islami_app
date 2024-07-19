import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadethDetailsScreen.dart';
import 'package:islami_app/Home/homeScreen.dart';
import 'package:islami_app/Home/quran/suraDetailsScreen.dart';
import 'package:islami_app/MythemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/appConfgProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future<void> main() async {
  
  runApp(ChangeNotifierProvider(
    create: (context)=> Appconfgprovider(),
    child: MyApp()));
    
  
    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    var provider=Provider.of<Appconfgprovider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routeName,
      routes: {
        Homescreen.routeName: (context) => Homescreen(),
        Suradetailsscreen.routeName: (context) => Suradetailsscreen(),
        Hadethdetailsscreen.routeName: (context) => Hadethdetailsscreen()
      },
      theme: MyThemedata.lightmode,
      darkTheme: MyThemedata.darkMode,
      themeMode: provider.appTheme,
      locale: Locale(provider.appLang)
    );
  }
}
