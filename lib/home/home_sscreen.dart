import 'package:flutter/material.dart';
import 'package:islamy_app/Quran_detalls/quran.dart';
import 'package:islamy_app/hadeth_detalls/hadeth.dart';
import 'package:islamy_app/radio_detalls/radio.dart';
import 'package:islamy_app/Sebha_detalls/sebha.dart';
import 'package:islamy_app/setting_detalls/setting.dart';
import 'package:islamy_app/setting_detalls/settingProvaider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Home_screen extends StatefulWidget {
  static const String routeName = "Home_screen";

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int currentNavIndex=0;

  @override
  Widget build(BuildContext context) {
    SettingProvaider settingProvaider =Provider.of<SettingProvaider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingProvaider.themeMode==ThemeMode.light
              ?"assets/images/default_bg.png":
              "assets/images/dark_bg.png"),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamy),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,

          onTap: (index){
            currentNavIndex=index;

            setState(() {
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: AppLocalizations.of(context)!.radio
            ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: AppLocalizations.of(context)!.sebha
            ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: AppLocalizations.of(context)!.hadeth
            ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: AppLocalizations.of(context)!.quran
            ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:Icon(Icons.settings) ,
                label: AppLocalizations.of(context)!.setting
            ),


          ],
        ),
        body:
            Container(
              child:
              currentNavIndex == 0 ? Radioo() :
              currentNavIndex == 1 ? Sebha() :
              currentNavIndex==2 ? Hadeth():
              currentNavIndex==3 ?Quran():Setting()
              ,
            )
           ,
           // Quran()
      ),
    );
  }
}
