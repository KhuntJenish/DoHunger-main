import 'package:do_hungers/design/components/background_container.dart';
import 'package:do_hungers/design/components/c_flat_button.dart';
import 'package:do_hungers/design/components/c_textfield.dart';
import 'package:do_hungers/design/screens/startup/s_otp_verification.dart';
import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SLogin extends StatelessWidget {
  static const String routeName = '/s-login';
  const SLogin({Key? key}) : super(key: key);

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
                    'Enter Details',
                    style: TextThemeX.text24.copyWith(
                        fontFamily: getInterFontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Hello makes your family smart',
                    style: TextThemeX.text16.copyWith(color: Color(0xff525A64)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CTextField(
                    labelText: 'Name',
                    suffixWidget: Padding(
                      padding: const EdgeInsets.all(15),
                      child: selectImage(AppImages.profileImg,
                          height: 24, width: 24),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CTextField(
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
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      const Text(
                        'Forget Password?',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: selectIcon(AppIcons.smallNext),
                      ),
                    ],
                  )
                ],
              ).horizontal20,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CFlatButton(
              text: 'Next',
              onPressed: () => Get.toNamed(SOtpVerification.routeName),
              isDisabled: false,
            ),
          ),
        ],
      ),
    );
  }
}
