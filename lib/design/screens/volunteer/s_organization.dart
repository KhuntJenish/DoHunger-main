// TODO:// Jenish Volunteer Organization Screen

import 'package:do_hungers/utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/c_appbar.dart';
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

class SOrganization extends StatelessWidget {
  static const routeName = '/s-organization';
  const SOrganization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _AppBar(),
          const CAppBar(
            title: '',
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Container(
              height: 131,
              width: 100,
              color: Colors.grey,
              child: Opacity(
                  opacity: 0.5, child: selectImage(AppImages.bannerImg)),
            ),
          ),
          Positioned(
            top: Get.height * 0.26,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundColor: whiteColor,
                  child: selectImage(
                    AppImages.bannerImg,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Charity Life',
                  style: TextThemeX.text20.copyWith(
                      fontFamily: getPlusJakartaSansFontFamily,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '32 Volunteer'.capitalize.toString(),
                  style: TextThemeX.text14.copyWith(
                    color: lpurpleColor,
                    fontFamily: getPlusJakartaSansFontFamily,
                    // fontWeight: FontWeight.w700,
                  ),
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
            ),
          ),
          Positioned(
            top: Get.height * 0.45,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              // scrollDirection: Axis.vertical,
              physics: defaultPhysics,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'About',
                          style: TextThemeX.text50.copyWith(
                              fontFamily: getCormorantGaramondFontFamily,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'The researchers could statistically prove that donating to a cause made people happier. They also listed other.. ',
                          textAlign: TextAlign.center,
                          style: TextThemeX.text14.copyWith(
                            color: greyColor1,
                            fontFamily: getPlusJakartaSansFontFamily,
                          ),
                        ),
                      ],
                    ).horizontal20,
                  ),
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
                              trandGraph: selectImage(
                                  AppImages.graphlineBlueImg,
                                  width: 69,
                                  height: 92),
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
                    title: 'Volunteer',
                    onPressed: () => Get.toNamed(STopDonors.routeName),
                  ).horizontal20,
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 800,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      physics: defaultPhysics,
                      itemCount: 15,
                      itemBuilder: ((context, index) => Container(
                            // margin: (index == 0)
                            //     ? EdgeInsets.only(top: 150)
                            //     : (index == 14)
                            //         ? EdgeInsets.only(bottom: 65)
                            //         : null,
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
                                    child: selectImage(AppImages.donorImg1,
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
                                      'Kanishka Kapoor',
                                      style: TextThemeX.text16.copyWith(
                                          color: greyColor2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Person Rd. inglenook, CA 95437',
                                      style: TextThemeX.text12.copyWith(
                                        color: greyColor2.withOpacity(0.3),
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),)
                              ],
                            ),
                          )),
                    ).horizontal20,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CFlatButton(
              bgColor: lpurpleColor,
              txtColor: whiteColor,
              icon: selectIcon(AppIcons.bigNextWhite),
              text: 'Join Charity Life',
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
                  '30%',
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
          height: 131,
          width: 428,
          child: selectImage(AppImages.bannerImg, fit: BoxFit.contain),
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
