import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData.light().copyWith(
    errorColor: redColor,
    backgroundColor: lbgColor,
    primaryColor: lpurpleColor,
    // primaryColorLight: lPrimaryColor,
    splashColor: Colors.transparent,
    scaffoldBackgroundColor: lbgColor,
    hintColor: blackColor2.withOpacity(.4),
    iconTheme: const IconThemeData(size: 24),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: lbgColor,
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: greyColor3),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      barBackgroundColor: lbgColor,
      primaryColor: lpurpleColor,
      scaffoldBackgroundColor: lbgColor,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
          fontSize: 14,
          color: blackColor1,
          fontFamily: getPlusJakartaSansFontFamily,
        ),
        primaryColor: lpurpleColor,
      ),
    ),
  );
  // static final darkTheme = ThemeData.dark().copyWith(
  //   errorColor: redColor,
  //   backgroundColor: lbgColor,
  //   primaryColor: lpurpleColor,
  //   // primaryColorLight: lPrimaryColor,
  //   splashColor: Colors.transparent,
  //   scaffoldBackgroundColor: lbgColor,
  //   hintColor: blackColor2.withOpacity(.4),
  //   iconTheme: const IconThemeData(size: 24),
  //   appBarTheme: const AppBarTheme(
  //     elevation: 0,
  //     backgroundColor: lbgColor,
  //   ),
  //   textSelectionTheme: const TextSelectionThemeData(cursorColor: greyColor3),
  //   cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
  //     barBackgroundColor: lbgColor,
  //     primaryColor: lpurpleColor,
  //     scaffoldBackgroundColor: lbgColor,
  //     textTheme: CupertinoTextThemeData(
  //       textStyle: TextStyle(
  //         fontSize: 14,
  //         color: blackColor1,
  //         fontFamily: getPlusJakartaSansFontFamily,
  //       ),
  //       primaryColor: lpurpleColor,
  //     ),
  //   ),
  // );
}
