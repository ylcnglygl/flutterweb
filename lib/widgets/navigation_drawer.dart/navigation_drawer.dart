import 'package:flutter/material.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/widgets/navigation_drawer.dart/drawer_item.dart';
import 'package:the_basics/widgets/navigation_drawer.dart/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 16),
      ]),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(
              title: 'Episodes',
              icon: Icons.videocam,
              navigationPath: EpisodesRoute),
          DrawerItem(
              title: 'About', icon: Icons.help, navigationPath: AboutRoute)
        ],
      ),
    );
  }
}
