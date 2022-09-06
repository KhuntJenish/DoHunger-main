import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  ThemeData get theme => Theme.of(this);

  TextTheme get tt => Theme.of(this).textTheme;

  ColorScheme get cs => Theme.of(this).colorScheme;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get topPadding => math.max(statusBarHeight + 10, 10);

  double get bottomPadding => math.max(bottomSafeHeight + 15, 15);

  double get statusBarHeight => MediaQuery.of(this).viewPadding.top;

  double get bottomSafeHeight => MediaQuery.of(this).viewPadding.bottom;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
}

extension AnimationExtension on Widget {
  Widget get fadeAnimation => AnimationLimiter(
        child: AnimationConfiguration.synchronized(
          duration: const Duration(milliseconds: 1000),
          child: FadeInAnimation(
            curve: Curves.decelerate,
            child: this,
          ),
        ),
      );

  Widget get infiniteHeight => SizedBox(
        height: double.infinity,
        child: this,
      );
}

extension PaddingExtension on Widget {
  Widget get horizontal15 => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: this,
      );

  Widget get horizontal20 => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: this,
      );
}
