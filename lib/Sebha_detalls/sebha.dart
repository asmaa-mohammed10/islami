import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/Sebha_detalls/sebha_body.dart';
import 'package:islamy_app/Sebha_detalls/tsbeh.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int numberOfTsbeh=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SebhaBody(),
            ],
          ),
          SizedBox(height: 30,),

          Text("عدد التسبيحات ",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30,),
          Tsbeh(numberOfTsbeh.toString()),
          SizedBox(height: 30,),

          ElevatedButton(onPressed:() {
            numberOfTsbeh+=1;
            setState(() {
            });
          },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(34) ),
                backgroundColor: Theme.of(context).colorScheme.primary,

              ),

              child:
              Text("سبحان الله",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 35

                ),
              )
          )





        ],
      ),
    ) ;
  }
}
