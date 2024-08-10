import 'package:flutter/material.dart';

class SebhaBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(child:
        Image.asset("assets/images/head_sebha_logo.png"),
          left: 100,
          bottom: 200,

        ),

        Image.asset("assets/images/body_sebha_logo.png"),
      ],
    );
  }
}
