import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CAppBar extends StatelessWidget {
  const CAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: setColor(lbgColor),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          20,
          context.topPadding + 24,
          20,
          30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                child: selectIcon(AppIcons.back), onTap: () => Get.back()),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextThemeX.text16.copyWith(fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            selectIcon(AppIcons.notification)
          ],
        ),
      ),
    );
  }
}
