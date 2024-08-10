import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tsbeh extends StatelessWidget {
  String numberOfTsbeh;
  Tsbeh(this.numberOfTsbeh){}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        color:Theme.of(context).colorScheme.secondary ,
      ),
      child:
      Text(numberOfTsbeh.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
        ),
      ),
    );
  }
}
