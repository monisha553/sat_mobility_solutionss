import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/shared/constants/app_color.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appMainColor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: Container(
            color: AppColor.appMainColor,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to SAT Mobility Solutions",
                  style: TextStyle(
                    fontFamily: "Inter-Bold",
                    fontSize: 15.sp,
                    color: AppColor.blackTextColor,
                  ),
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  AssetsPathes.appLogoImage,
                  height: 221.h,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
