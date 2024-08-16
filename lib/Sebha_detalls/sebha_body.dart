import 'package:flutter/material.dart';

class SebhaBody extends StatelessWidget {
  double angle=0;
  void Function() onTap;
  SebhaBody(this.angle,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(child:
        Image.asset("assets/images/head_sebha_logo.png"),
          right: MediaQuery.of(context).size.width *0.11,
          bottom: MediaQuery.of(context).size.height *0.23,

        ),
        GestureDetector(
          onTap:onTap ,
          child: Transform.rotate(
              angle: angle,
            child: Image.asset("assets/images/body_sebha_logo.png"),

          ),
        )




      ],
    );
  }
}
