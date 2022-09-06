import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:flutter/cupertino.dart';

class CCoreButton extends CupertinoButton {
  const CCoreButton({
    Key? key,
    Color? color,
    required Widget child,
    void Function()? onPressed,
    EdgeInsetsGeometry? padding = EdgeInsets.zero,
    BorderRadius? borderRadius = const BorderRadius.all(Radius.circular(8.0)),
  }) : super(
          key: key,
          minSize: 0,
          child: child,
          color: color,
          padding: padding,
          onPressed: onPressed,
          borderRadius: borderRadius,
          pressedOpacity: defaultButtonPressedOpacity,
        );
}
