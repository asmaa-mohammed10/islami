import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth_detalls_args.dart';

class Hadeth_detalls_screen extends StatefulWidget {
  static const String routeName="Hadeth_detalls_screen";

  @override
  State<Hadeth_detalls_screen> createState() => _Hadeth_detalls_screenState();
}

class _Hadeth_detalls_screenState extends State<Hadeth_detalls_screen> {
  List<String> lines=[];
@override
  Widget build(BuildContext context) {
    HadethDetallsArgs args =ModalRoute.of(context)?.settings.arguments as HadethDetallsArgs;

    readHadeth(args.index);
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
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color:Theme.of(context).hoverColor,
          ),
          child: lines.isNotEmpty ?Text(lines[args.index],
              textAlign: TextAlign.center,
          )
              :Center(child: CircularProgressIndicator(),),

        ),
      ),


    );
  }

  void readHadeth(int index)async{
    String quranText =await rootBundle.loadString("assets/hadeth/ahadeth.txt");
    lines=quranText.split("#");
    setState(() {});

  }
}