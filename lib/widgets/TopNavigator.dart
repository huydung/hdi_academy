import 'package:flutter/material.dart';
import 'package:hdi_academy/constants.dart';
import 'package:hdi_academy/models/LearningSession.dart';
import 'package:provider/provider.dart';

import 'RoundedIconButton.dart';

class TopNavigator extends StatefulWidget {
  @override
  _TopNavigatorState createState() => _TopNavigatorState();
}

class _TopNavigatorState extends State<TopNavigator> {
  LearningSession learningSession;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    learningSession = context.watch<LearningSession>();
    return Container(
      height: kHDIAppBarHeight,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: kHDISmallMargin,
            ),
            child: RoundedIconButton(
              onPressed: () {},
              icon: Icons.clear,
            ),
          ),
          // FaIcon(
          //   FontAwesomeIcons.times,
          //   size: kHDIIconSize,
          //   color: kHDIColorWhite,
          // ),
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  bottom: -5,
                  child: SliderTheme(
                    child: Slider(
                      min: 0,
                      max: learningSession.currentChapter.lessonsCount
                          .toDouble(),
                      value: 3,
                      activeColor: kHDIColorWhite,
                      inactiveColor: kHDIColorSubtleGrey,
                      onChanged: (double value) {},
                    ),
                    data: SliderTheme.of(context).copyWith(
                        trackHeight: 4,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 0.0,
                        )),
                  ),
                ),
                Positioned(
                  top: 7,
                  child: Text(
                    learningSession.currentLesson.title,
                    style: TextStyle(
                      fontSize: kHDIFontSizeSmall,
                      color: kHDIColorWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     vertical: 0,
          //     horizontal: kHDISmallMargin,
          //   ),
          //   child: Icon(
          //     Icons.apps,
          //     size: kHDIIconSize,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: kHDISmallMargin,
            ),
            child: RoundedIconButton(
              icon: Icons.bookmark_border,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
