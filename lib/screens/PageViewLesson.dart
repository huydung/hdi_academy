import 'package:flutter/material.dart';
import 'package:hdi_academy/constants.dart';
import 'package:hdi_academy/widgets/AnswerOptions.dart';
import 'package:hdi_academy/widgets/LearningCard.dart';
import 'package:hdi_academy/widgets/RoundedIconButton.dart';
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
              ),
              SizedBox(
                height: kHDISmallMargin,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LearningCard(),
                    AnswerOptions(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kHDISmallMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RoundedIconButton(
                      icon: Icons.arrow_back_ios_sharp,
                      onPressed: () {},
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 10,
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.only(
                        top: kHDISmallMargin,
                        bottom: kHDISmallMargin,
                        left: kHDISmallMargin * 2,
                        right: kHDISmallMargin,
                      ),
                      color: kHDIColorGreen,
                      disabledColor: kHDIColorSubtleGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kHDISmallBorder),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: kHDIFontSizeBig,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: kHDIIconSize,
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
