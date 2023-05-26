import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_demo/const/colors.dart';

Widget customFAB(){
  return Container(
        height: 50.h,
        width: 50.h,
        decoration:const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  0.9
                ],
                colors: [
                  blueStart,
                  blueEnd,
                ])),
        // onPressed: () {},
        child:const Center(
          child: FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
        ),
      );
}