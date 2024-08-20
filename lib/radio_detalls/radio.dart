import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/radio_detalls/radio_botten.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Radioo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage("assets/images/radio_image.png")),
          Text(AppLocalizations.of(context)!.holy_quran_radio,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,

              fontSize: 25

            ),
          ),
          RadioBotten()

        ],
      ),
    ) ;
  }
}
