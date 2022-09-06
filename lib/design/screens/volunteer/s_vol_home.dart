// TODO:// Jenish Volunteer Home Screeen

import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/c_flat_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images_icons.dart';
import '../../utils/app_text_theme.dart';
import '../../utils/design_constants.dart';
import '../../utils/select_image.dart';
import '../home/s_add_donation.dart';
import '../home/s_top_doners.dart';
import '../home/s_top_group.dart';
import '../setting/s_setting.dart';

class SVolHomne extends StatelessWidget {
  static const routeName = '/s-vol-home';
  const SVolHomne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: defaultPhysics,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 270,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Visitors Overview',
                      style: TextThemeX.text16.copyWith(
                          fontFamily: getInterFontFamily,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Last 30 days',
                          style: TextThemeX.text12
                              .copyWith(color: const Color(0xff9A9A9A)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        selectIcon(AppIcons.arrowDown),
                      ],
                    )
                  ],
                ).horizontal20,
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 17, 14, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      selectImage(AppImages.donationOverViewImg,
                          fit: BoxFit.cover, height: 180, width: 180),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          _DonationRatioItemWise(
                            donationType: 'Book',
                            trandGraph: selectImage(AppImages.graphlineBlueImg,
                                width: 69, height: 92),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          _DonationRatioItemWise(
                            donationType: 'Toy',
                            trandGraph: selectImage(AppImages.graphlineRedImg,
                                width: 69, height: 92),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                _TopWidget(
                  title: 'My Organization ',
                  onPressed: () {},
                ).horizontal20,
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    border: Border.all(color: greyColor2.withOpacity(0.3)),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
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
                          child: selectImage(
                            AppImages.favourite,
                            height: 54,
                            width: 54,
                            fit: BoxFit.contain,
                          ),
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
                            'Create Organization',
                            style: TextThemeX.text16.copyWith(
                                color: greyColor2, fontWeight: FontWeight.w600),
                          ),
                          FittedBox(
                            child: Text(
                              'Create your organization and support.',
                              style: TextThemeX.text10.copyWith(
                                color: greyColor2.withOpacity(0.3),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ).horizontal20,
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    physics: defaultPhysics,
                    itemCount: 3,
                    itemBuilder: ((context, index) => Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            border:
                                Border.all(color: greyColor2.withOpacity(0.3)),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: selectImage(
                                    AppImages.bannerImg,
                                    height: 54,
                                    width: 54,
                                    fit: BoxFit.contain,
                                  ),
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
                                    'Special Needs',
                                    style: TextThemeX.text16.copyWith(
                                        color: greyColor2,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '32 Volunteers',
                                    style: TextThemeX.text12.copyWith(
                                      color: greyColor2.withOpacity(0.3),
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  // gradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
                                  color: const Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text('2'),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                              )
                            ],
                          ),
                        )),
                  ).horizontal20,
                ),
                _TopWidget(
                  title: 'Top Group',
                  onPressed: () => Get.toNamed(STopGroups.routeName),
                ).horizontal20,
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    physics: defaultPhysics,
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: const [
                          _GroupAvatar(),
                          _GroupAvatar(),
                          _GroupAvatar(),
                          _GroupAvatar(),
                          _GroupAvatar(),
                          _GroupAvatar(),
                          _GroupAvatar(),
                          _GroupAvatar()
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 40,
                ),
                _TopWidget(
                  title: 'Donor',
                  onPressed: () => Get.toNamed(STopDonors.routeName),
                ).horizontal20,
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  physics: defaultPhysics,
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 75,
                            ),
                            _DoneorChip(),
                            _DoneorChip(),
                            _DoneorChip()
                          ],
                        ),
                        Row(
                          children: const [
                            _DoneorChip(),
                            _DoneorChip(),
                            _DoneorChip()
                          ],
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 95,
                            ),
                            _DoneorChip(),
                            _DoneorChip(),
                            _DoneorChip()
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  '*',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: getCormorantGaramondFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ).horizontal20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The best',
                      style: TextStyle(
                          fontSize: 50,
                          fontFamily: getCormorantGaramondFontFamily,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'way happiness',
                      style: TextStyle(
                          fontSize: 50,
                          fontFamily: getCormorantGaramondFontFamily,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ).horizontal20,
                const SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The researchers could statistically prove',
                      style: TextThemeX.text14,
                    ),
                    Text(
                      'that donating to a cause made people',
                      style: TextThemeX.text14,
                    ),
                    Text(
                      'happier. They also listed other factors that ',
                      style: TextThemeX.text14,
                    ),
                    Text(
                      'increased happiness',
                      style: TextThemeX.text14,
                    ),
                  ],
                ).horizontal20,
                const SizedBox(
                  height: 41,
                ),
                Row(
                  children: [
                    selectIcon(AppIcons.star),
                    const SizedBox(
                      width: 13,
                    ),
                    selectIcon(AppIcons.star),
                  ],
                ).horizontal20,
                const SizedBox(
                  height: 65,
                )
              ],
            ),
          ),
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

class _DoneorChip extends StatelessWidget {
  const _DoneorChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
        color: Color(0XFFEAE0F6),
      ),
      child: Row(
        children: [
          Container(
            height: 54,
            width: 54,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60))),
            child: selectImage(AppImages.donorImg, height: 54, width: 54),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              'Kanishka Kapoor',
              style: TextThemeX.text16.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class _TopWidget extends StatelessWidget {
  final String title;
  final Function? onPressed;
  const _TopWidget({
    required this.title,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextThemeX.text16.copyWith(
              fontWeight: FontWeight.w700, fontFamily: getInterFontFamily),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => onPressed?.call(),
          child: Row(
            children: [
              Text(
                'View All',
                style: TextThemeX.text12.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 10,
              ),
              selectIcon(AppIcons.smallNext)
            ],
          ),
        )
      ],
    );
  }
}

class _GroupAvatar extends StatelessWidget {
  const _GroupAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 12.5),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          AppImages.groupImg,
        ),
      ),
    );
  }
}

class _DonationRatioItemWise extends StatelessWidget {
  const _DonationRatioItemWise(
      {Key? key, required this.donationType, required this.trandGraph})
      : super(key: key);

  final String donationType;
  final Widget trandGraph;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: whiteColor,
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          trandGraph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  donationType,
                  style: TextThemeX.text12,
                ),
                Text(
                  'Donation',
                  style: TextThemeX.text12,
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  '60%',
                  style: TextThemeX.text18.copyWith(
                      color: const Color(0xff0A003D),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          )
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  child: selectImage(
                    AppImages.profileImg1,
                    height: 50,
                    width: 50,
                  ),
                  onTap: () => Get.toNamed(SSetting.routeName),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextThemeX.text16.copyWith(
                          fontFamily: getCormorantGaramondFontFamily,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Dodo Ray 👋',
                      style: TextThemeX.text16
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const Spacer(),
                selectIcon(AppIcons.notification)
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: greyColor2.withOpacity(0.3)),
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
          ),
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
                  child: selectImage(
                    AppImages.donorImg,
                    height: 54,
                    width: 54,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You Have to take ',
                      style: TextThemeX.text12.copyWith(
                          color: greyColor2, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        selectImage(
                          AppImages.location,
                          height: 15,
                          width: 15,
                          fit: BoxFit.contain,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Preston Rd.Inglewood',
                            style: TextThemeX.text12.copyWith(
                              color: greyColor2.withOpacity(0.3),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Image.asset(AppImages.sendImg),
              Flexible(
                child: VerticalDivider(
                  thickness: 0.8,
                  color: Colors.black,
                ),
              ),
              Image.asset(AppImages.call1Img),
            ],
          ),
        ).horizontal20,
        SizedBox(
          height: 20,
        ),
        Container(
          color: setColor(lbgColor),
          child: const Divider(
            // height: ,
            thickness: 1,
            indent: 67,
            endIndent: 67,
            color: Color.fromRGBO(109, 150, 255, 44),
          ),
        )
      ],
    );
  }
}
