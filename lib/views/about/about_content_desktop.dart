import 'package:flutter/material.dart';
import 'package:the_basics/widgets/about_details.dart';
import 'package:the_basics/widgets/call_to_action_about/call_to_action_about.dart';

class AboutContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AboutDetails(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CallToActionAbout(
                      'youtube.png', 'https://www.youtube.com/c/FilledStacks/'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CallToActionAbout(
                      'instagram.png', 'https://instagram.com/filledstacks'),
                ),
              ],
            ),
            SizedBox(width: 60),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CallToActionAbout(
                      'twitter.png', 'https://twitter.com/filledstacks'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CallToActionAbout(
                      'blog.png', 'https://www.filledstacks.com/'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
