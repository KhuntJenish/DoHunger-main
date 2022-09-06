import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final TextInputType? inputType;
  final int? maxchar;
  final String? Function(String?)? validators;
  final int? maxLine;
  final Widget? suffixWidget;
  final bool? isBorder;
  const CTextField(
      {Key? key,
      this.isBorder,
      this.suffixWidget,
      required this.labelText,
      this.controller,
      this.formatter,
      this.maxLine = 1,
      this.inputType = TextInputType.text,
      this.maxchar = 25,
      this.validators})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validators, // onSaved: (value) => _email = value,
      // maxLines: maxLine,
      keyboardType: inputType,
      inputFormatters: formatter,
      controller: controller,
      // maxLength: maxchar,
      decoration: InputDecoration(
        // errorText: _errorText,

        label: Text(
          labelText,
          style: TextThemeX.text14.copyWith(
            color: setColor(blackColor2).withOpacity(.4),
          ),
        ),
        suffixIcon: (suffixWidget != null) ? suffixWidget : null,
        filled: true,
        fillColor: setColor(whiteColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            width: 2,
            color: setColor(greyColor2.withOpacity(.1)),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 2,
            color: setColor(blackColor).withOpacity(.2),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 2,
            color: setColor(redColor.withOpacity(.3)),
          ),
        ),
      ),
    );
  }
}
