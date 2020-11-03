import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hdi_academy/constants.dart';

class AnswerOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color enabledColor = kHDIColorWhite;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      shrinkWrap: true,
      padding: EdgeInsets.all(kHDISmallMargin),
      crossAxisSpacing: kHDISmallMargin,
      children: [
        RaisedButton(
          color: enabledColor,
          highlightColor: kHDIPrimaryColor,
          splashColor: kHDIPrimaryColor,
          elevation: kHDISmallBorder,
          textColor: kHDIBGColor,
          onPressed: () {},
          child: Text(
            'TRUE',
            style: TextStyle(fontSize: kHDIFontSizeBig),
          ),
        ),
        RaisedButton(
          color: enabledColor,
          highlightColor: kHDIPrimaryColor,
          splashColor: kHDIPrimaryColor,
          elevation: kHDISmallBorder,
          onPressed: () {},
          textColor: kHDIBGColor,
          child: Text(
            'FALSE',
            style: TextStyle(fontSize: kHDIFontSizeBig),
          ),
        ),
      ],
    );
  }
}
