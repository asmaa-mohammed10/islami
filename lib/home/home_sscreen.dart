import 'package:flutter/material.dart';
import 'package:islamy_app/Quran_detalls/quran.dart';
import 'package:islamy_app/hadeth_detalls/hadeth.dart';
import 'package:islamy_app/radio_detalls/radio.dart';
import 'package:islamy_app/Sebha_detalls/sebha.dart';

class Home_screen extends StatefulWidget {
  static const String routeName = "Home_screen";

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int currentNavIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png")
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
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
              label: "راديو"
            ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: "سبحة"
            ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: "حديث"
            ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: "قرآن"
            ),

          ],
        ),
        body:
            Container(
              child:
              currentNavIndex == 0 ? Radioo() :
              currentNavIndex == 1 ? Sebha() :
              currentNavIndex==2 ? Hadeth(): Quran()
              ,
            )
           ,
           // Quran()
      ),
    );
  }
}
