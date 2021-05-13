import 'package:flutter/material.dart';
import 'package:the_basics/widgets/about_details.dart';
import 'package:the_basics/widgets/call_to_action_about/call_to_action_about.dart';

class AboutContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AboutDetails(),
          SizedBox(height: 100),
          CallToActionAbout(
              'YouTube', 'https://www.youtube.com/c/FilledStacks/'),
        ],
      ),
    );
  }
}
