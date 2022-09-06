import 'package:do_hungers/design/components/c_core_button.dart';
import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

String setldImageIcon(String lightImageIcon, [String? darkImageIcon]) =>
    darkImageIcon != null && isDarkMode ? darkImageIcon : lightImageIcon;

Image selectImage(
  String image, {
  double? width,
  double? height,
  BoxFit fit = BoxFit.cover,
}) {
  return Image.asset(
    image,
    fit: fit,
    width: width,
    height: height,
    // color: Colors.black,
  );
}

ImageProvider selectImageProvider(String image) {
  return AssetImage(image);
}

Widget selectIcon(
  String icon, {
  double? width,
  Color? color,
  void Function()? onPressed,
}) {
  return CCoreButton(
    onPressed: onPressed,
    child: SvgPicture.asset(
      icon,
      width: width,
      height: width,
      color: color,
    ),
  );
}
