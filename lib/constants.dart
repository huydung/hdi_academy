import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final kLogger = Logger(
    printer: PrefixPrinter(PrettyPrinter(colors: false, methodCount: 0)));

const Color kHDIPrimaryColor = Color(0xffBE021A);
const Color kHDIBGColor = Color(0xff53000B);
const double kHDIAppBarHeight = 56;
const double kHDIStandardMargin = 20.0;
const double kHDISmallMargin = 10.0;
const double kHDISmallBorder = 4.0;
const double kHDISmallFontSize = 10;
const double kHDIDetailFontSize = 14;
const double kHDIKeyPointFontSize = 60;
const double kHDITitleFontSize = 40;
const double kHDISubtitleFontSize = 20;
const Color kHDISubtleColor = Color(0xFF90A4AE);
const double kHDIIconSize = 30;
const Color kHDIColorWhite = Colors.white;
const Color kHDIColorSubtleGrey = Color(0xFF546E7A);

class Routes {
  static const String HOME = '/';
  static const String LESSON = '/lesson';
}
