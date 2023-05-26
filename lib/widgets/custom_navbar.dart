import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'custom_iconbutton.dart';

Widget customNavBar(){
  return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomAppBar(
          color: whiteColor,
          shape: const CircularNotchedRectangle(),
          height: 72.h,
          notchMargin: 6,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customIconButton(icon: headPhoneLogo, label: contact),
                      SizedBox(
                        width: 50.w,
                      ),
                      customIconButton(icon: walletLogo, label: wallet),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customIconButton(icon: shareLogo, label: share),
                      SizedBox(
                        width: 50.w,
                      ),
                      customIconButton(icon: userLogo, label: profile),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
}