import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mobile_demo/const/const.dart';
import 'package:mobile_demo/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: [
            Text(
              helloDeepak,
              style: TextStyle(
                  color: blackColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 66.h,
              width: 350.w,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(bgImage), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Padding(
                padding: EdgeInsets.all(15.h),
                child: Text(
                  unibitFantasy,
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            customTile(assetImage: ludo),
            SizedBox(
              height: 20.h,
            ),
            customTile(assetImage: cricket),
          ],
        ),
      ),
      floatingActionButton: customFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customNavBar(),
    );
  }
}
