import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_app/Quran_detalls/quran_detalls_screen.dart';
import 'package:islamy_app/add_theme.dart';
import 'package:islamy_app/home/home_sscreen.dart';
import 'package:islamy_app/setting_detalls/settingProvaider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'hadeth_detalls/hadeth_detalls_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingProvaider(),
        child : Islamy()
    ),
  );
}

class Islamy extends StatelessWidget {
  late SettingProvaider settingProvaider;
  Islamy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    settingProvaider =Provider.of<SettingProvaider>(context);
    initShardPref();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AddTheme.lightTheme,
      darkTheme:AddTheme.darkTheme ,
      themeMode: settingProvaider.themeMode,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"), // English
        Locale("ar"), // Spanish
      ],
        locale: Locale(settingProvaider.language),


        initialRoute: Home_screen.routeName,
        routes: {
          Home_screen.routeName:(_)=>Home_screen(),
          Quran_detalls_screen.routeName:(_)=>Quran_detalls_screen(),
          Hadeth_detalls_screen.routeName:(_)=> Hadeth_detalls_screen(),

        },
    );
  }

  Future<void> initShardPref() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var language =prefs.getString("language");
    if(language!=null)
      settingProvaider.changrLanguge(language);
    var mode =prefs.getString("mode");
    settingProvaider.changrTheme(mode=="dark"?ThemeMode.dark:ThemeMode.light);




  }
}
