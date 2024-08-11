import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hadeth_detalls_screen extends StatelessWidget {
  static const String routeName="Hadeth_detalls_screen";

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
      ),


    );
  }
}