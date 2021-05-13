import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/about/about_content_desktop.dart';
import 'package:the_basics/views/about/about_content_mobile.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutContentMobile(),
      desktop: AboutContentDesktop(),
    );
  }
}
