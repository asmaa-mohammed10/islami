import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hadeth_detalls_args.dart';
import 'hadeth_detalls_screen.dart';

class Hadeth extends StatelessWidget {
  List<String> hadethNames =["الحد يث الأول","الحد يث الثاني","الحد يث الثالث","الحد يث الرابع","الحد يث الخامس"
    ,"الحد يث السادس","الحد يث السابع","الحد يث الثامن","الحد يث التاسع","الحد يث العاشر","الحد يث الحادي عشر","الحد يث الثاني عشر"," الحد يث الثالث عشر","الحد يث الرابع عشر","الحد يث الخامس عشر"
    ,"الحد يث السادس عشر","الحد يث السابع عشر","الحد يث الثامن عشر","الحد يث التاسع عشر","الحد يث العشرون","الحد يث الواحد وعشرون","الحد يث الثاني والعشرون","الحد يث الثالث والعشرون","الحد يث الرابع والعشرون","الحد يث الخامس والعشرون"
    ,"الحد يث السادس والعشرون","الحد يث السابع والعشرون ","الحد يث الثامن والعشرون","الحد يث والتاسع والعشرون","الحد يث الثلاثون","الحد يث الواحد والثلاثون","الحد يث الثاني والثلاثون","الحد يث الثالث والثلاثون","الحد يث الرابع والثلاثون","الحد يث الخامس والثلاثون"
    ,"الحد يث السادس والثلاثون","الحد يث السابع والثلاثون","الحد يث الثامن والثلاثون","الحد يث التاسع والثلاثون","الحد يث الاربعون",
    "الحد يث الواحد والاربعون","الحد يث الثاني والاربعون"," الحد يث الثالث والاربعون","الحد يث الرابع والاربعون","الحد يث الخامس والاربعون","الحد يث السادس والاربعون","الحد يث السابع والاربعون","الحد يث الثامن والاربعون","الحد يث التاسع والاربعون","الحد يث الخمسين",];


  @override
  Widget build(BuildContext context) {

    return Container(

      child: Column(
        children: [
          Image(image: AssetImage("assets/images/hadeth_logo.png")),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context,index){

                  return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context,
                          Hadeth_detalls_screen.routeName,
                          arguments: HadethDetallsArgs(hadethNames[index],index));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(hadethNames[index],
                          style: TextStyle(
                              fontSize: 24,
                            color: Theme.of(context).colorScheme.onPrimary,

                          ),
                        ),


                      ],
                    ),
                  );

                },
                separatorBuilder: (context,index){
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(7),
                    height: 2,
                    color: Theme.of(context).colorScheme.onSecondary,

                  );
                },
                itemCount: hadethNames.length
            ),
          )

        ],
      ),
    ) ;

  }
}
