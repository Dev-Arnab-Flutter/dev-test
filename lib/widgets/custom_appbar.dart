import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_demo/const/colors.dart';
import 'package:mobile_demo/const/const.dart';

PreferredSize customAppbar() {
  return PreferredSize(
    preferredSize: Size(390.w, 95.h),
    child: Container(
      height: 95.h,
      width: 390.w,
      color: blackColor,
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, right: 20.w, left: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DottedBorder(
              dashPattern:const [10],
              color: goldenColor,
              borderType: BorderType.Circle,
              child: CircleAvatar(
                backgroundColor: whiteColor,
                child: Image.asset(
                  logo,
                  width: 27.h,
                ),
              ),
            ),
            ImageIcon(const AssetImage(bell),color: whiteColor,size: 24.h,)
          ],
        ),
      ),
    ),
  );
}
