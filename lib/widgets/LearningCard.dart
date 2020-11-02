import 'package:flutter/material.dart';
import 'package:hdi_academy/constants.dart';

class LearningCard extends StatelessWidget {
  final Widget child;
  LearningCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.all(kHDISmallMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kHDISmallMargin),
        color: kHDIColorBrightGrey,
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 3),
              spreadRadius: 2,
              blurRadius: 3)
        ],
      ),
    );
  }
}
