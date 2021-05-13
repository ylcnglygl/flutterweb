import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/widgets/custom_switch.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_item/navbar_item.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_logo.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NavBarLogo(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Episodes', EpisodesRoute, icon: Icons.videocam),
              SizedBox(width: 60),
              NavBarItem('About', AboutRoute, icon: Icons.help),
              SizedBox(width: 60),
              CustomSwitch(),
            ],
          )
        ],
      ),
    );
  }
}

//ThemeModeHandler.of(context)!
                        //.saveThemeMode(ThemeMode.light);