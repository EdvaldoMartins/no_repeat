// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart
 
import 'package:flutter/material.dart';
import 'package:example/src/presentation/core/functions.dart';

import 'color_util.dart';
import 'constants.dart';

abstract class ThemeUtil {
  static ThemeData lightTheme() {
    kPrimaryColor = Color(0xFF00428D);
    kBackgroundColor = Colors.white;
    kPlaceholderColor = Colors.grey[200]!;
    kIconColor = Color(0xFF00428D);
    kTitleTextColor = Colors.black;
    kSubtitleTextColor = Colors.black;
    return ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline1: styleText(),
        headline2: styleText(),
        headline3: styleText(),
        headline4: styleText(),
        headline5: styleText(),
        headline6: styleText(),
        bodyText1: styleText(),
        bodyText2: styleText(),
        subtitle1: styleText(),
        subtitle2: styleText(),
        caption: styleText(),
      ).apply(bodyColor: kTitleTextColor, displayColor: kTitleTextColor),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: kBackgroundColor),
      accentColor: kPrimaryColor,
      primaryColor: kPrimaryColor,
      backgroundColor: kBackgroundColor,
      scaffoldBackgroundColor: kBackgroundColor,
      dialogBackgroundColor: kBackgroundColor,
      fontFamily: fontName,
      iconTheme: IconThemeData(color: kIconColor),
      appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: kBackgroundColor,
          iconTheme: IconThemeData(color: kIconColor)),
    );
  }
}

