import 'package:do_hungers/design/screens/home/s_add_donation.dart';
import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:do_hungers/utils/extentions.dart';

import '../../../utils/extentions.dart';
import '../../components/c_appbar.dart';
import '../../components/c_flat_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images_icons.dart';
import '../../utils/app_text_theme.dart';
import '../../utils/select_image.dart';
import '../startup/s_otp_verification.dart';

class STopGroups extends StatelessWidget {
  static const String routeName = '/s-top_donors';
  const STopGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              physics: defaultPhysics,
              itemCount: 15,
              itemBuilder: ((context, index) => Container(
                    margin: (index == 0)
                        ? EdgeInsets.only(top: 150)
                        : (index == 14)
                            ? EdgeInsets.only(bottom: 65)
                            : null,
                    padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: greyColor2.withOpacity(0.3)),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(14),
                        )),
                    child: Row(
                      children: [
                        Container(
                          height: 54,
                          width: 54,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: selectImage(AppImages.groupImg,
                                height: 54, width: 54, fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stark Industries',
                              style: TextThemeX.text16.copyWith(
                                  color: greyColor2,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Mar 25, 2006',
                              style: TextThemeX.text12.copyWith(
                                color: greyColor2.withOpacity(0.3),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              'Donation worth',
                              style: TextThemeX.text12.copyWith(
                                color: greyColor2.withOpacity(0.3),
                              ),
                            ),
                            Text(
                              'Mar 25, 2006',
                              style: TextThemeX.text14.copyWith(
                                  color: greyColor2,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ))).horizontal20,
          const _AppBar(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CFlatButton(
              bgColor: lpurpleColor,
              txtColor: whiteColor,
              icon: selectIcon(AppIcons.bigNextWhite),
              text: 'Be a Hero, Be a Doner',
              onPressed: () => Get.toNamed(SAddDonation.routeName),
              isDisabled: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                selectIcon(
                  AppIcons.back,
                  onPressed: () => Get.back(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Top Groups',
                  style:
                      TextThemeX.text16.copyWith(fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                selectIcon(AppIcons.notification)
              ],
            ),
          ),
        ),
        Container(
          color: setColor(lbgColor),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '08 Donor Found',
                style: TextThemeX.text13
                    .copyWith(color: greyColor2.withOpacity(0.3)),
              ),
              const Spacer(),
              selectIcon(AppIcons.sort),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  'Sort',
                  style: TextThemeX.text13,
                ),
              ),
              selectIcon(AppIcons.arrowDown),
              const SizedBox(
                width: 17,
              ),
              selectIcon(AppIcons.filter),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  'Filter',
                  style: TextThemeX.text13,
                ),
              ),
            ],
          ),
        ).horizontal20
      ],
    );
  }
}
