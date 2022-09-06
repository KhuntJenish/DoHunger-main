import 'package:do_hungers/design/components/background_container.dart';
import 'package:do_hungers/design/components/c_flat_button.dart';
import 'package:do_hungers/design/screens/home/s_home.dart';
import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class SOtpVerification extends StatelessWidget {
  static const String routeName = '/s-otp-verification';
  const SOtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SplashBackground(),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: defaultPhysics,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Text(
                    'Enter Verification Code',
                    style: TextThemeX.text24.copyWith(
                        fontFamily: getInterFontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Enter code that we have sent to your',
                    style: TextThemeX.text14
                        .copyWith(color: const Color(0xff525A64)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'mobile number ',
                        style: TextThemeX.text14
                            .copyWith(color: const Color(0xff525A64)),
                      ),
                      Text(
                        '9054****89',
                        style: TextThemeX.text14.copyWith(
                            fontFamily: getInterFontFamily,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Pinput(
                    validator: ((value) {
                      if (value!.length < 4) return "Length invalid";
                      return null;
                    }),
                    // controller: _pinController,
                    defaultPinTheme: PinTheme(
                      height: 70,
                      width: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: setColor(whiteColor).withOpacity(0.5),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            offset: const Offset(0, 11),
                            color: isDarkMode
                                ? blackColor1
                                : const Color(0xff1b1920).withOpacity(.03),
                          ),
                        ],
                        border: Border.all(
                          width: 2,
                          color: setColor(setColor(blackColor).withOpacity(.2)),
                        ),
                      ),
                    ),
                    showCursor: true,
                    obscureText: true,
                    length: 4,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(
                        'Resend Code',
                        style: TextThemeX.text16.copyWith(
                            fontWeight: FontWeight.w600,
                            color: setColor(blackColor2)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: selectIcon(AppIcons.smallNext),
                      ),
                    ],
                  ),
                ],
              ).horizontal20,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CFlatButton(
              text: 'Verify',
              isDisabled: false,
              onPressed: () => Get.toNamed(SHome.routeName),
            ),
          ),
        ],
      ),
    );
  }
}
