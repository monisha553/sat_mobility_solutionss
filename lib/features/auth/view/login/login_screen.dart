import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sat_mobility_solutions/core/utils/shared/components/widgets/custom_textfield.dart';

import '../../../../core/utils/shared/constants/app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(8.0.w),
                    child: Container(
                      color: const Color(0xffbec3c7),
                      height: 742.h, // Use setHeight to adapt height
                      width: 319.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Center(
                            child: Text(
                              "Login Page",
                              style: TextStyle(
                                fontFamily: "Inter-Bold",
                                fontSize: 24.sp,
                                color: AppColor.blackTextColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 179.h,
                          ),
                          SizedBox(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Phone number",
                                      style: TextStyle(
                                        fontFamily: "Inter-Regular",
                                        fontSize: 15.sp,
                                        color: AppColor.blackTextColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomTextField(),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
