import 'package:flutter/material.dart';
import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/widgets/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDetails(),
          SizedBox(height: 100),
          CallToAction('Join Course'),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        color: Colors.red,
      ),
    );
  }
}
