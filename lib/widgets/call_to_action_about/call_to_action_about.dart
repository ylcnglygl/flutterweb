import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/extensions/hover_extensions.dart';
import 'package:the_basics/widgets/call_to_action_about/call_to_action_about_desktop.dart';
import 'package:the_basics/widgets/call_to_action_about/call_to_action_about_mobile.dart';

class CallToActionAbout extends StatelessWidget {
  final String title;
  final String url;
  CallToActionAbout(this.title, this.url);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionAboutMobile(
        title: title,
      ),
      tablet: CallToActionAboutTabletDesktop(
        title: title,
        url: url,
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
