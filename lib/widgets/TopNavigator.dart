import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hdi_academy/constants.dart';
import 'package:hdi_academy/models/LearningSession.dart';
import 'package:provider/provider.dart';

class TopNavigator extends StatefulWidget {
  @override
  _TopNavigatorState createState() => _TopNavigatorState();
}

class _TopNavigatorState extends State<TopNavigator> {
  LearningSession learningSession;

  @override
  void initState() {
    learningSession = context.watch<LearningSession>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHDIAppBarHeight,
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.times,
            size: kHDIIconSize,
            color: kHDIColorWhite,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  learningSession.currentLesson.title,
                ),
                Slider(
                  min: 0,
                  max: learningSession.currentLesson.chapter.lessonsCount
                      .toDouble(),
                  value: learningSession.currentLesson.order.toDouble(),
                  onChanged: (double value) {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
