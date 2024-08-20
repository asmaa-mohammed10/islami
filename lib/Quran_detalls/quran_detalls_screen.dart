import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/Quran_detalls/quranDetailsArgs.dart';
import 'package:islamy_app/setting_detalls/settingProvaider.dart';
import 'package:provider/provider.dart';

class Quran_detalls_screen extends StatefulWidget {
  static const String routeName="Quran_detalls_screen";

  @override
  State<Quran_detalls_screen> createState() => _Quran_detalls_screenState();

}

class _Quran_detalls_screenState extends State<Quran_detalls_screen> {
  List<String> lines=[];

  @override
  Widget build(BuildContext context) {
    SettingProvaider settingProvaider =Provider.of<SettingProvaider>(context);
    QuranDetailsArgs args =ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if(lines.isEmpty){
      readQuran(args.index);
    }
    return Container(
      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(
          image: DecorationImage(
              image:  AssetImage(settingProvaider.themeMode==ThemeMode.light
                  ?"assets/images/default_bg.png":
              "assets/images/dark_bg.png"),
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body:
        Card(
          color: Theme.of(context).hoverColor,
          margin: EdgeInsets.all(20),
          elevation: 20,
          child:
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Text(args.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 25,
                        color: Theme.of(context).colorScheme.onPrimary,


                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.play_circle))
                  ],
                ),
                lines.isNotEmpty ?Expanded(
                  child: ListView.builder(
                      itemBuilder: (context,index)=>Text(
                        "${lines[index]} (${index+1})",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        textAlign: TextAlign.center,

                      ),



                      itemCount: lines.length),
                )
                    :Center(child: CircularProgressIndicator(),),
              ],
              )



        ),

    )


    );
  }

  void readQuran(int index)async{
    String quranText =await rootBundle.loadString("assets/sure/${index+1}.txt");
    lines=quranText.split("\n");
    setState(() {});

  }
}
