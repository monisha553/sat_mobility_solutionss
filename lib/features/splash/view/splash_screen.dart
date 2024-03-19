import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/shared/constants/assets_pathes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            color: const Color(0xFF090350),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                    height: 221.h,
                    width: 360.w,
                    child: Image.asset(AssetsPathes.appLogoImage))
              ],
            )));
  }
}
