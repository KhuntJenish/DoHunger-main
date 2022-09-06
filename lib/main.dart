import 'package:do_hungers/design/screens/home/s_add_donation.dart';
import 'package:do_hungers/design/screens/home/s_home.dart';
import 'package:do_hungers/design/screens/home/s_top_doners.dart';
import 'package:do_hungers/design/screens/home/s_top_group.dart';
import 'package:do_hungers/design/screens/setting/s_edit_profile.dart';
import 'package:do_hungers/design/screens/setting/s_profile.dart';
import 'package:do_hungers/design/screens/setting/s_setting.dart';
import 'package:do_hungers/design/screens/startup/s_login.dart';
import 'package:do_hungers/design/screens/startup/s_onboarding.dart';
import 'package:do_hungers/design/screens/startup/s_otp_verification.dart';
import 'package:do_hungers/design/screens/startup/s_splash.dart';
import 'package:do_hungers/design/screens/volunteer/s_organization.dart';
import 'package:do_hungers/design/screens/volunteer/s_vol_home.dart';
import 'package:do_hungers/design/screens/volunteer/s_vol_notification.dart';
import 'package:do_hungers/design/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Do Hunger',
      builder: (context, _) {
        return ResponsiveWrapper.builder(
          _,
          minWidth: 375,
          maxWidth: 470,
          defaultScale: true,
          breakpoints: const [
            // ResponsiveBreakpoint.resize(1024, name: TABLET),
            // ResponsiveBreakpoint.resize(2048, name: TABLET),
            // ResponsiveBreakpoint.resize(480, name: MOBILE),
            // ResponsiveBreakpoint.autoScale(800, name: TABLET),
            // ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            // ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
        );
      },
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      // initialRoute: SSplash.routeName,
      initialRoute: SVolHomne.routeName,
      transitionDuration: const Duration(milliseconds: 600),
      getPages: [
        GetPage(name: SSplash.routeName, page: () => const SSplash()),
        GetPage(name: SOnboarding.routeName, page: () => SOnboarding()),
        GetPage(name: SLogin.routeName, page: () => const SLogin()),
        GetPage(
            name: SOtpVerification.routeName,
            page: () => const SOtpVerification()),
        GetPage(name: SHome.routeName, page: () => const SHome()),
        GetPage(name: STopDonors.routeName, page: () => const STopDonors()),
        GetPage(name: STopGroups.routeName, page: () => const STopGroups()),
        GetPage(name: SAddDonation.routeName, page: () => const SAddDonation()),
        GetPage(name: SSetting.routeName, page: () => const SSetting()),
        GetPage(name: SProfile.routeName, page: () => const SProfile()),
        GetPage(name: SEditProfile.routeName, page: () => const SEditProfile()),
        GetPage(
            name: SOrganization.routeName, page: () => const SOrganization()),
        GetPage(name: SVolHomne.routeName, page: () => const SVolHomne()),
        GetPage(
            name: SVolNotification.routeName,
            page: () => const SVolNotification()),
      ],
    );
  }
}
