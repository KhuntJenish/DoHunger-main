import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return selectImage(setldImageIcon(AppImages.splashscreenBackground),
        height: context.height, width: context.width);
  }
}
