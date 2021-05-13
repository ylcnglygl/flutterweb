import 'package:flutter/material.dart';
import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/widgets/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            CourseDetails(),
            Expanded(
                child: Center(
              child: CallToAction('Join Course'),
            )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        color: Colors.red,
      ),
    );
  }
}
