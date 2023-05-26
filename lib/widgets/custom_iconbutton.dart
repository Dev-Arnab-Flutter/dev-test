import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_demo/const/colors.dart';

Widget customIconButton({required String icon,required String label}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ImageIcon(AssetImage(icon),size: 24.h,color: navBarItemColor,),
      SizedBox(
        height: 4.h,
      ),
      Text(label,style: TextStyle(color: navBarItemColor,fontSize: 10.sp,fontWeight: FontWeight.w500),)
    ],
  );
}