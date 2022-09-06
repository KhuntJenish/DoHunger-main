import 'dart:async';

import 'package:do_hungers/design/components/background_container.dart';
import 'package:do_hungers/design/screens/startup/s_onboarding.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SSplash extends StatefulWidget {
  static const String routeName = '/s-splash';
  const SSplash({Key? key}) : super(key: key);

  @override
  State<SSplash> createState() => _SSplashState();
}

class _SSplashState extends State<SSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(SOnboarding.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SplashBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Center(
              child: selectImage(AppImages.doHungerImg),
            ),
          )
        ],
      ),
    );
  }
}
