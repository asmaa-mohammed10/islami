import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/setting_detalls/settingProvaider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    SettingProvaider settingProvaider =Provider.of<SettingProvaider>(context);

    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.dark_mode,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                )



              ),
              Switch(
                  value: settingProvaider.themeMode==ThemeMode.dark,
                   onChanged: (isDark){
                    settingProvaider.changrTheme(
                      isDark? ThemeMode.dark:ThemeMode.light
                    );
                   },
                activeColor: Theme.of(context).colorScheme.onPrimary,
                inactiveThumbColor: Theme.of(context).colorScheme.onPrimary,
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Text(AppLocalizations.of(context)!.language,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                )

                ,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  dropdownColor: Theme.of(context).colorScheme.onSecondary,
                  value: settingProvaider.language,
                    items: [
                  DropdownMenuItem(
                    value: "ar",
                    child: Text("العربية",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 20,
                        )

                    ),
                  ),
                  DropdownMenuItem(
                    value: "en",
                    child: Text("English",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                        )

                    ),
                  ),
                ], onChanged: (selectedValue){
                  if(selectedValue==null)return;
                  settingProvaider.changrLanguge(selectedValue);
                }
                ),
              )

            ],
          )

        ],
      ),
    );
  }
}
