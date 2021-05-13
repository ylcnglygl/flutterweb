import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  ThemeMode? themeMode = ThemeMode.dark;
  bool isSwitchedFT = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Switch(
      value: isSwitchedFT,
      activeThumbImage: AssetImage('assets/icon/darkmode.png'),
      inactiveThumbImage: AssetImage('assets/icon/lightmode.png'),
      activeColor: Colors.white,
      onChanged: (value) async {
        setState(() {
          isSwitchedFT = value;
          themeMode = ThemeModeHandler.of(context)!.themeMode;
          themeMode =
              themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
          ThemeModeHandler.of(context)!.saveThemeMode(themeMode!);

          //switch works
        });
        print(isSwitchedFT);
      },
    );
  }
}
