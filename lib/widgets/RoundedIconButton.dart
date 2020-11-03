import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final bool showBackground;

  RoundedIconButton({this.icon, this.onPressed, this.showBackground = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kHDIColorBrightGrey.withOpacity(showBackground ? 0.1 : 0),
      shape: CircleBorder(),
      child: IconButton(
        icon: Icon(icon),
        iconSize: kHDIIconSize,
        color: kHDIColorBrightGrey,
        splashRadius: kHDIIconSize * 0.7,
        onPressed: onPressed,
      ),
    );
  }
}
