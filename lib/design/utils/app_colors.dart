import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:flutter/cupertino.dart';

Color setColor(Color lightModeColor, [Color? darkModeColor]) =>
    darkModeColor != null && isDarkMode ? darkModeColor : lightModeColor;

String get getCormorantGaramondFontFamily => 'CormorantGaramond';
String get getInterFontFamily => 'Inter';
String get getPlusJakartaSansFontFamily => 'PlusJakartaSans';
String get getRobotoFontFamily => 'Roboto';
String get getUbuntuCondensedFontFamily => 'UbuntuCondensed-Regular';

const lbgColor = Color(0xFFF8FAFB);

const lpurpleColor = Color(0xff51459E);

const blackColor = Color(0xff000000);

const blackColor1 = Color(0xff090A0A);

const blackColor2 = Color(0xff1D1D1C);

const blueColor = Color(0xff0A003D);

const greyColor1 = Color(0xff525A64);

const greyColor2 = Color(0xff090A0A);

const greyColor3 = Color(0xffD2B9F7);

const whiteColor = Color(0xffFFFFFF);

const whiteColor1 = Color(0xff525A64);

const redColor = Color.fromRGBO(255, 29, 29, 1);
