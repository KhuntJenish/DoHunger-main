import 'dart:ui';

import 'package:do_hungers/design/components/c_appbar.dart';
import 'package:do_hungers/design/components/c_flat_button.dart';
import 'package:do_hungers/design/components/c_textfield.dart';
import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:do_hungers/utils/extentions.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:do_hungers/design/utils/select_image.dart';

class SAddDonation extends StatelessWidget {
  static const routeName = '/s-add-donation';
  const SAddDonation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: defaultPhysics,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.topPadding + 100,
                ),
                Text(
                  'Donation',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: getInterFontFamily),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Complete the details below so we can contact you',
                  style: TextThemeX.text14.copyWith(color: greyColor1),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: [
                      _CTextField(
                        labelText: 'Name',
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(15),
                          child: selectImage(AppImages.profileImg,
                              height: 24, width: 24),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _CTextField(
                        labelText: 'Mobile No.',
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: selectImage(
                            AppImages.callImg,
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _CTextField(
                        labelText: 'Location',
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: selectImage(
                            AppImages.location,
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _CTextField(
                        labelText: 'Item Category',
                        suffixWidget: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: selectIcon(AppIcons.dropDownIcon)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _CTextField(
                        labelText: 'Estimate value of your donation item',
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: selectImage(
                            AppImages.rupee,
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DottedBorder(
                        dashPattern: [8, 8],
                        borderType: BorderType.RRect,
                        radius: Radius.circular(14),
                        color: blackColor2.withOpacity(0.5),
                        strokeWidth: 1.15,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          child: Container(
                            height: 190,
                            width: double.infinity,
                            color: whiteColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selectImage(AppImages.gallary,
                                    width: 22, height: 22),
                                Text(
                                  'Upload Item Picture',
                                  style: TextThemeX.text12.copyWith(
                                      color: blackColor2.withOpacity(0.5)),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      // Container(
                      //   height: 190,
                      //   decoration: BoxDecoration(
                      //       color: whiteColor,

                      //       border: ,
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(14))),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            ).horizontal20,
          ),
          const CAppBar(title: "Donation"),
          Align(
            alignment: Alignment.bottomCenter,
            child: CFlatButton(
              bgColor: lpurpleColor,
              txtColor: whiteColor,
              icon: selectIcon(AppIcons.bigNextWhite),
              text: 'Submit Request',
              onPressed: () => null,
              isDisabled: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _CTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final TextInputType? inputType;
  final int? maxchar;
  final String? Function(String?)? validators;
  final int? maxLine;
  final Widget? suffixWidget;
  final bool? isBorder;
  const _CTextField(
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
      style: TextThemeX.text16.copyWith(fontWeight: FontWeight.w600),
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
        border: InputBorder.none,
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(14),
        //   borderSide: BorderSide(
        //     //   width: 2,
        //     color: setColor(whiteColor),
        //   ),
        // ),

        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(14),
        //   borderSide: BorderSide(
        //     //   width: 2,
        //     color: setColor(whiteColor),
        //   ),
        // ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: BorderSide(
        //     width: 2,
        //     color: setColor(redColor.withOpacity(.3)),
        //   ),
        // ),
      ),
    );
  }
}
