import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'custom_button.dart';

Widget customTile({required String assetImage}){
  return  Container(
              height: 237.h,
              width: 350.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: whiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0.h),
                child: Column(
                  children: [
                    Container(
                      height: 130.h,
                      width: 330.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                           assetImage,
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 30.h,
                            width: 66.w,
                            child: FlutterImageStack(
                              imageSource: ImageSource.Asset,
                              imageList:const [user1, user2, user3],
                              itemRadius: 30.r,
                              totalCount: 3,
                              itemBorderColor: whiteColor,
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Flexible(
                            child: Text(
                              playerCount,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor),
                            ),
                          ),
                          customButton(
                              gradientStart: goldenStart,
                              gradientEnd: goldenEnd,
                              label: playNow,
                              isFullScreen: false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
}