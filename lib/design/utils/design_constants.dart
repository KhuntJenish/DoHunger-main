import 'package:flutter/material.dart';
import 'package:get/get.dart';

double normalAppBarHeight = 100;

double get appBarHeightPlusPadding => normalAppBarHeight + 25;

bool get isDarkMode => Get.isDarkMode;

const ScrollPhysics defaultPhysics = BouncingScrollPhysics(
  parent: AlwaysScrollableScrollPhysics(),
);

const ScrollPhysics neverScrollablePhysics = NeverScrollableScrollPhysics();

const double defaultButtonPressedOpacity = 0.6;
