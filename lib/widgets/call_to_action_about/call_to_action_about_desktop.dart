import 'package:flutter/material.dart';
import 'package:the_basics/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CallToActionAboutTabletDesktop extends StatelessWidget {
  final String title;
  final String url;

  void _launchURL() async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  const CallToActionAboutTabletDesktop(
      {Key? key, required this.title, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Container(
        width: 300,
        height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Image.asset('assets/icon/$title'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
