import 'dart:ffi';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:do_hungers/design/components/c_appbar.dart';
import 'package:do_hungers/design/screens/setting/s_profile.dart';
import 'package:do_hungers/design/utils/app_colors.dart';
import 'package:do_hungers/design/utils/app_images_icons.dart';
import 'package:do_hungers/design/utils/app_text_theme.dart';
import 'package:do_hungers/design/utils/design_constants.dart';
import 'package:do_hungers/design/utils/select_image.dart';
import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SSetting extends StatelessWidget {
  static const String routeName = '/s-setting';
  const SSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          physics: defaultPhysics,
          child: Column(
            children: [
              SizedBox(
                height: context.topPadding + 100,
              ),
              _SettingWidget(
                title: 'My Profile',
                onPressed: () => Get.toNamed(SProfile.routeName),
                subtitle: 'View and Update Profile Setting',
                leadingWidget:
                    selectImage(AppImages.profileImg, height: 24, width: 24),
              ),
              _SettingWidget(
                title: 'All Donation',
                subtitle:
                    'You may view all of your past and current donations list.',
                leadingWidget:
                    selectImage(AppImages.profileImg, height: 24, width: 24),
              ),
              _SettingWidget(
                title: 'Notifications',
                subtitle: 'Give permission to the application to notify you',
                leadingWidget:
                    selectImage(AppImages.notification, height: 24, width: 24),
                suffixWidget:
                    CupertinoSwitch(value: false, onChanged: (_) => null),
              ),
              _SettingWidget(
                title: 'Invite your friends to Do Hunger.',
                subtitle: 'Invite your friends and get connected with them.',
                leadingWidget:
                    selectImage(AppImages.group_icon, height: 24, width: 24),
              ),
              _SettingWidget(
                title: 'About this Application',
                subtitle: '© 2022-2023 All Rights Reserved by Do Hunger.',
                leadingWidget:
                    selectImage(AppImages.error1, height: 24, width: 24),
                suffixWidget: Row(
                  children: [
                    Text(
                      'Version ',
                      style: TextThemeX.text12.copyWith(color: lpurpleColor),
                    ),
                    Text(
                      '1.0 ',
                      style: TextThemeX.text12.copyWith(
                          fontWeight: FontWeight.w700, color: lpurpleColor),
                    ),
                  ],
                ),
              ),
              const _TheTeam(),
              _SettingWidget(
                title: 'Report an Issue',
                subtitle: 'Facing an issue? Report and we’ll look into it.',
                leadingWidget:
                    selectImage(AppImages.error2, height: 24, width: 24),
              ),
              _SettingWidget(
                title: 'Rate on App Store',
                subtitle: 'Enjoying the app? Leave a review on the App Store.',
                leadingWidget:
                    selectImage(AppImages.star, height: 24, width: 24),
              ),
            ],
          ).horizontal20,
        ),
        const CAppBar(title: 'Setting'),
      ]),
    );
  }
}

class _TheTeam extends StatelessWidget {
  const _TheTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.fromLTRB(27, 19, 19, 17),
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Column(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                selectImage(AppImages.star, height: 24, width: 24),
                const SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Team',
                        overflow: TextOverflow.fade,
                        style: TextThemeX.text14
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      AutoSizeText(
                        'Get to know the team, They solve real problems in reality.',
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextThemeX.text10.copyWith(color: greyColor1),
                      )
                    ],
                  ),
                ),
              ]),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              selectImage(AppImages.dodo, height: 65),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'DODO',
                        style: TextThemeX.text12.copyWith(
                          fontWeight: FontWeight.w400,
                          fontFamily: getUbuntuCondensedFontFamily,
                          color: setColor(blackColor1),
                        ),
                      ),
                      const SizedBox(width: 5),
                      selectIcon(
                        setldImageIcon(AppIcons.pen),
                      ),
                    ],
                  ),
                  Text(
                    'UI/UX',
                    style: TextThemeX.text10.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: getUbuntuCondensedFontFamily,
                      color: setColor(lpurpleColor),
                    ),
                  ),
                ],
              ),
              selectImage(AppImages.swallow, height: 65),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'SWALLOW',
                        style: TextThemeX.text12.copyWith(
                          fontWeight: FontWeight.w400,
                          fontFamily: getUbuntuCondensedFontFamily,
                          color: setColor(blackColor1),
                        ),
                      ),
                      const SizedBox(width: 5),
                      selectIcon(
                        setldImageIcon(AppIcons.code),
                      ),
                    ],
                  ),
                  Text(
                    'Code',
                    style: TextThemeX.text10.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: getUbuntuCondensedFontFamily,
                      color: setColor(lpurpleColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 23,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SettingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? suffixWidget;
  final Widget leadingWidget;
  void Function()? onPressed = () => null;

  _SettingWidget({
    Key? key,
    this.onPressed,
    required this.title,
    required this.subtitle,
    required this.leadingWidget,
    this.suffixWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.fromLTRB(27, 19, 19, 17),
        decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leadingWidget,
              const SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.fade,
                      style: TextThemeX.text14
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    AutoSizeText(
                      subtitle,

                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      // overflowReplacement: Text('Sorry String too long'),
                      style: TextThemeX.text10.copyWith(color: greyColor1),
                    )
                  ],
                ),
              ),
              (suffixWidget != null) ? const Spacer() : Container(),
              (suffixWidget != null) ? suffixWidget! : Container(),
            ]),
      ),
    );
  }
}
