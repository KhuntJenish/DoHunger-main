import 'package:do_hungers/design/components/background_container.dart';
import 'package:do_hungers/design/components/c_flat_button.dart';
import 'package:do_hungers/design/screens/startup/s_login.dart';
import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SOnboarding extends StatelessWidget {
  static const String routeName = '/s-onboarding';
  SOnboarding({Key? key}) : super(key: key);
  final textTheme50 = TextStyle(
      fontFamily: getCormorantGaramondFontFamily,
      fontWeight: FontWeight.w600,
      color: blackColor2,
      fontSize: 50);
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 281,
                  ),
                  selectImage(AppImages.doHungerImg, width: 222, height: 68),
                  const SizedBox(
                    height: 70,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Why',
                        style: textTheme50,
                      ),
                      Text(
                        'Do hunger?',
                        style: textTheme50,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'It was discovered that there was gap',
                        style: TextThemeX.text14.copyWith(
                            fontWeight: FontWeight.w400, color: blackColor2),
                      ),
                      Text(
                        'between people\'s wish',
                        style: TextThemeX.text14.copyWith(
                            fontWeight: FontWeight.w400, color: blackColor2),
                      ),
                      Text(
                        'to donate and their ability to do so',
                        style: TextThemeX.text14.copyWith(
                            fontWeight: FontWeight.w400, color: blackColor2),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Spacer(),
                  selectImage(
                    AppImages.zognestImg,
                    width: 102,
                    height: 51,
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ).horizontal20,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CFlatButton(
                text: 'Happy to have you here',
                isDisabled: false,
                onPressed: () => Get.toNamed(SLogin.routeName)),
          )
        ],
      ),
    );
  }
}
