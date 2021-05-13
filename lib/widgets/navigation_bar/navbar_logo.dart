import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/services/navigation_service.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo("HomeRoute");
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
