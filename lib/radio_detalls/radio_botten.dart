import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioBotten extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: (){},
            icon: Icon(
              Icons.skip_previous_rounded,
              size: 50,
              color: Theme.of(context).colorScheme.onSecondary,



            )
        ),
        IconButton(onPressed: (){},
            icon: Icon(
              Icons.play_arrow_rounded,
              size: 60,
              color: Theme.of(context).colorScheme.onSecondary,



            )
        ),
        IconButton(onPressed: (){},
            icon: Icon(
              Icons.skip_next,
              size: 50,
              color: Theme.of(context).colorScheme.onSecondary,



            )
        ),


      ],
    );
  }
}
