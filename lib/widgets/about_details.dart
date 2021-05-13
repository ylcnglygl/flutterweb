import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60.0),
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Learn to build high quality production ready mobile apps using Flutter",
              textAlign: textAlignment,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                  fontSize: titleSize),
            ),
            SizedBox(height: 30),
          ],
        ),
      );
    });
  }
}
