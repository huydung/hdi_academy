import 'package:flutter/material.dart';
import 'package:hdi_academy/constants.dart';
import 'package:hdi_academy/widgets/TopNavigator.dart';

class PageViewLesson extends StatefulWidget {
  @override
  _PageViewLessonState createState() => _PageViewLessonState();
}

class _PageViewLessonState extends State<PageViewLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kHDIBGColor,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: kHDIAppBarHeight,
                child: TopNavigator(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
