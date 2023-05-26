import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_demo/const/colors.dart';


Widget customTextField({required String imagePath,required String hintText}){
  return  TextField(
                    decoration: InputDecoration(
                      prefixIcon: ImageIcon( AssetImage(imagePath,),color: textfieldGrey,size: 16.h,),
                      border: InputBorder.none,
                       fillColor: textFieldFillColor,
                       filled: true,
                       hintText: hintText,
                       hintStyle: TextStyle(color: textfieldGrey,fontSize: 14.sp)
                    ),
                  );
}