import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/shared/constants/assets_pathes.dart';

class PaymentSucessful extends StatefulWidget {
  const PaymentSucessful({super.key});

  @override
  State<PaymentSucessful> createState() => _PaymentSucessfulState();
}

class _PaymentSucessfulState extends State<PaymentSucessful> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 100.h,
                  width: 100.w,
                  child: Image.asset(AssetsPathes.Done)),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Payment Successful",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF117201)),
                ),
              ),


            ],
          ),
        )
    ));
  }
}
