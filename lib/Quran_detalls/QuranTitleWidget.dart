import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/Quran_detalls/quran_detalls_screen.dart';

class QranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  QranTitleWidget(this.title,this.versesNumber);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Quran_detalls_screen.routeName);
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
