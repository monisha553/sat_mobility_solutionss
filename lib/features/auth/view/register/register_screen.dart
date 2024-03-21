import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sat_mobility_solutions/core/utils/shared/components/widgets/custom_textfield.dart';

import '../../../../core/utils/shared/constants/app_color.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String _selectedLocation = 'A';
  List<String> _locations = ['A', 'B', 'C', 'D'];
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
                              "Registration Page",
                              style: TextStyle(
                                fontFamily: "Inter-Bold",
                                fontSize: 24.sp,
                                color: AppColor.blackTextColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Email ID",
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Mobile No",
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Select Route",
                                      style: TextStyle(
                                        fontFamily: "Inter-Regular",
                                        fontSize: 15.sp,
                                        color: AppColor.blackTextColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DropdownButtonFormField<String>(
                                      value: _selectedLocation,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _selectedLocation = newValue!;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        fillColor: Colors.white, // Change background color to black
                                        filled: true, // Fill the background with color
                                        border:
                                            OutlineInputBorder(), // Border styling
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                            vertical: 12.0), // Padding
                                        labelStyle: TextStyle(
                                            color: Colors
                                                .black), // Label text style
                                      ),
                                      style: const TextStyle(
                                          color: Colors
                                              .black), // Dropdown button text style
                                      icon: const Icon(Icons
                                          .arrow_drop_down), // Dropdown button icon
                                      iconSize:
                                          24.0, // Dropdown button icon size
                                      elevation:
                                          16, // Dropdown button elevation
                                      items: _locations.map((location) {
                                        return DropdownMenuItem<String>(
                                          value: location,
                                          child: Container(
                                            child: Text(location, style: TextStyle(color: Colors.black)),
                                          ),
                                        );
                                      }).toList(),
                                      itemHeight: 48,
                                    ),
                                  )
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
