import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/shared/constants/assets_pathes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF090350),
        title: Center(
          child: Text(
            "SAT Mobility Solutions",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC78F00)),
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 20.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                  height: 235.h,
                  width: 360.w,
                  child: Image.asset(AssetsPathes.appLogoImage)),
            ),
            Container(
              height: 31.h,
              width: 360.w,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    "Time",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              height: 81.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Color(0xFF090350),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on, // Icon for location
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(width: 8.0), // Adjust spacing between icon and text
                  Text(
                    "Current Location",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h,),
            Container(
              height: 200.h,
              width: 360.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                              height: 50.h,
                              width: 50.w,
                              child: Image.asset(AssetsPathes.BuyTicket)),
                          Text("Buy Ticket",style:TextStyle(fontSize: 10))
                        ],
                      ),
                      SizedBox(
                          height: 50.h,
                          width: 50.w,
                          child: Image.asset(AssetsPathes.FeederStatus))
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                              height: 50.h,
                              width: 50.w,
                              child: Image.asset(AssetsPathes.Recharge))
                        ],
                      ),
                      SizedBox(
                          height: 50.h,
                          width: 50.w,
                          child: Image.asset(AssetsPathes.TravelHistory))
                    ],
                  ),
                  SizedBox(height: 50.h,),
                ],
              ),
            ),
            Container(
              height: 81.h, // Total height of Container including the height of Text widgets
              width: 360.w,
              decoration: BoxDecoration(
                color: Color(0xFF090350),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wallet Balance",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Rs. 0",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
