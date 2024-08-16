import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            children: [
              Text("الوضع الليلي",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight:FontWeight.w500)
                ,
              ),
              // Switch(
              //     value:set
              //     , onChanged: onChanged)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Row(
            children: [
              Text("اللغة",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight:FontWeight.w500)
                ,
              ),
            ],
          )

        ],
      ),
    );
  }
}
