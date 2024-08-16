import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tsbeh extends StatelessWidget {
  String ofTsbeh;

  Tsbeh(this.ofTsbeh){}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        color:Theme.of(context).colorScheme.secondary ,
      ),
      child:
      Text(ofTsbeh,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 35,
        ),
      ),
    );
  }
}
