import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../../../core/utils/shared/constants/app_color.dart';

class OtpVerification extends StatefulWidget {
  final String verificationId;
  const OtpVerification({super.key, required this.verificationId});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _formKey = GlobalKey<FormState>();

  OtpFieldController otpFieldController = OtpFieldController();
  String enteredOtp = '';
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
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
                            padding: EdgeInsets.all(8.0.w),
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
                                        "OTP Verification",
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Enter OTP",
                                                style: TextStyle(
                                                  fontFamily: "Inter-Regular",
                                                  fontSize: 15.sp,
                                                  color:
                                                      AppColor.blackTextColor,
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),


                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Form(
                                        key: _formKey,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              OTPTextField(
                                                otpFieldStyle: OtpFieldStyle(
                                                    backgroundColor:
                                                        Colors.white),
                                                controller: otpFieldController,
                                                length: 5,
                                                width: size.width * 09.w,
                                                fieldWidth: 50,
                                                style: const TextStyle(
                                                    fontSize: 17),
                                                textFieldAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                fieldStyle: FieldStyle.box,
                                                spaceBetween: 5,
                                                onCompleted: (pin) {
                                                  print("Completed: " + pin);
                                                  enteredOtp = pin;
                                                },
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                            ])),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        foregroundColor: Color(0xff4200ff),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'Resend OTP?',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 30.h,
                                      width: 110.w,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(

                                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFC78F00)), // Set background color
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Set text color
                                        ),
                                        child: Center(child: Text('Submit')),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 120.h,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.black,
                                      ),
                                      child: Text(
                                        "Don't have an account",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),

                                    SizedBox(
                                      height: 30.h,
                                      width: 110.w,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(

                                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFC78F00)), // Set background color
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Set text color
                                        ),
                                        child: Center(child: Text('Register')),
                                      ),
                                    ),


                                  ]),
                                ]),

                            ),
                          ),
                        ]))))));
  }
}
