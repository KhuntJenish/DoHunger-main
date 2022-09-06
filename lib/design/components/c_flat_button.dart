import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:flutter/material.dart';

class CFlatButton extends StatelessWidget {
  final String text;
  final bool isDisabled;
  final void Function()? onPressed;
  final Color bgColor;
  final Widget? icon;
  final Color? txtColor;
  const CFlatButton(
      {Key? key,
      this.icon,
      this.txtColor,
      this.isDisabled = false,
      this.onPressed,
      required this.text,
      this.bgColor = const Color(0xffD4DBEB)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: (isDisabled) || onPressed == null ? 0.5 : 1,
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            color: bgColor,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            height: 65,
            width: double.infinity,
            child: Row(
              children: [
                Text(
                  text,
                  style: TextThemeX.text14
                      .copyWith(color: txtColor ?? blackColor2),
                ),
                const Spacer(),
                (icon != null) ? icon! : selectIcon(AppIcons.bigNextBlack)
              ],
            ),
          ),
        ));
  }
}
