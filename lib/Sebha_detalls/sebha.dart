import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/Sebha_detalls/sebha_body.dart';
import 'package:islamy_app/Sebha_detalls/tsbeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angel=0;
  int numberOfTsbeh=0;
  int numberOfTsbehList=0;
  List<String> tsbeh=[
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "لاحول ولا قوة الا بالله ",
    "الله اكبر"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SebhaBody(angel,
                    () {
                  numberOfTsbeh++;
                  angel+=3;
                  if(numberOfTsbeh%33==0)
                    numberOfTsbehList++;


                  if(numberOfTsbehList==tsbeh.length)
                    numberOfTsbehList=0;


                  setState(() {
                  });
                },
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.037,),

          Text(AppLocalizations.of(context)!.number_of_tsbeh,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color:Theme.of(context).colorScheme.onSecondary,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.035,),
          Tsbeh(numberOfTsbeh.toString()),
          SizedBox(height: MediaQuery.of(context).size.height*0.035,),
          Tsbeh(tsbeh[numberOfTsbehList]),



        ],
      ),
    ) ;
  }
}
