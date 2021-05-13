import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/centered_view.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar.dart';
import 'package:the_basics/widgets/navigation_drawer.dart/navigation_drawer.dart';

class LayuotTemplate extends StatelessWidget {
  final Widget child;

  const LayuotTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: child,
              )
            ],
          ),
        ),
      ),
    );
  }
}
