import 'package:flutter/material.dart';
import 'package:hdi_academy/constants.dart';

class LearningCard extends StatelessWidget {
  final Widget child;
  LearningCard({this.child});
//Life is 10% what happens to me and 90% of how I :1: it\".",
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: kHDISmallBorder,
      color: kHDIColorBrightGrey,
      margin: EdgeInsets.all(kHDISmallMargin),
      child: Container(
        padding: EdgeInsets.all(kHDIStandardMargin),
        child: RichText(
          text: TextSpan(
              text:
                  'Besides the external factors that you can not control anyway (such as an earth quake that destroy your city), ',
              style: DefaultTextStyle.of(context).style.copyWith(
                    color: Colors.black,
                    fontSize: kHDIFontSizeBig,
                  ),
              children: [
                TextSpan(
                  text: 'all of the outcomes you will got ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'come from your ',
                ),
                TextSpan(
                  text: 'knowledge, decisions, and actions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      '. \n\nAnd even for external events, how you response to them is crucial. This famous quote by Charles R. Swindoll captures the essential of this idea: "',
                ),
                TextSpan(
                  text: 'Life is 10% what happens to me and 90% of how I ',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: ' it',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: '".',
                ),
              ]),
        ),
      ),
      //
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(kHDISmallMargin),
      //   color: kHDIColorBrightGrey,
      //   boxShadow: [
      //     BoxShadow(
      //         color: Colors.black38,
      //         offset: Offset(0, 3),
      //         spreadRadius: 2,
      //         blurRadius: 3)
      //   ],
      // ),
    );
  }
}
