import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/Quran_detalls/quranDetailsArgs.dart';
import 'package:islamy_app/Quran_detalls/quran_detalls_screen.dart';

class QranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  int index;
  QranTitleWidget({Key? key,required this.title,required this.versesNumber,required this.index}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Quran_detalls_screen.routeName,arguments: QuranDetailsArgs(title,index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(versesNumber,
            style: TextStyle(
                fontSize: 24
            ),
          ),
          Text(title,
            style: TextStyle(
                fontSize: 24
            ),
          ),

        ],
      ),
    );
  }
}
