import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/radio_detalls/radio_botten.dart';

class Radioo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage("assets/images/radio_image.png")),
          Text("اذاعة القران الكريم",
            style: TextStyle(
              fontWeight: FontWeight.bold,

              fontSize: 25

            ),
          ),
          RadioBotten()

        ],
      ),
    ) ;
  }
}
