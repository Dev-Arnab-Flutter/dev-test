import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/colors.dart';

Widget customButton(
    {
     required bool isFullScreen,
      VoidCallback? onTap,
    required Color gradientStart,
    required Color gradientEnd,
    required String label,
    List<BoxShadow>? boxShadow}) {
  return GestureDetector(
    onTap: () {
      onTap!();
    },
    child: Container(
      height: isFullScreen?50.h:40.h,
      width: isFullScreen?350.w:134.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(55.r),
          gradient: LinearGradient(
              colors: [gradientStart, gradientEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          boxShadow: boxShadow),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
