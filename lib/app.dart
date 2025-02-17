import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sat_mobility_solutions/features/Home/View/feeder_status.dart';
import 'package:sat_mobility_solutions/features/auth/payment/paymentsuccessful.dart';
import 'package:sat_mobility_solutions/features/splash/view/splash_screen.dart';

import 'features/Home/View/home_screen.dart';
import 'features/auth/view/login/login_screen.dart';
import 'features/auth/view/login/otp_verification.dart';
import 'features/auth/view/register/register_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const ScreenUtilInit(
      designSize: Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        home: FeederStatus(),
      ),
    );
  }
}
