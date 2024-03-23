import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeederStatus extends StatefulWidget {
  const FeederStatus({Key? key}) : super(key: key);

  @override
  State<FeederStatus> createState() => _FeederStatusState();
}

class _FeederStatusState extends State<FeederStatus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          height: 800.h,
          width: 360.w,
          color: const Color(0xFF090350),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      SizedBox(width: 100.w,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Feeder Status",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFC78F00),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
                Container(
                  alignment: Alignment.center,
                  height: 680.h,
                  width: 310.w,
                  color: const Color(0xFFBEC3C7),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Vehicle Status",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 120.w,
                                child: Text(
                                  "Pickup Location",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
