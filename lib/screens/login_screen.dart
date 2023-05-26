import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_demo/const/colors.dart';
import 'package:mobile_demo/const/const.dart';
import 'package:mobile_demo/screens/home_screen.dart';
import 'package:mobile_demo/widgets/custom_Textfield.dart';
import 'package:mobile_demo/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 140.h,
          ),
          SizedBox(
            height: 80.h,
            width: 80.h,
            child: Image.asset(logo,fit: BoxFit.fill,),
          ),
          SizedBox(
            height: 130.h,
          ),
          Container(
            height: 494.h,
            width: width.w,
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r)),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: blackColor.withOpacity(0.05),
                  ),
                ]),
            child: Padding(
              padding: EdgeInsets.all(20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    login,
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: blackColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  customTextField(imagePath: call, hintText: mobile),
                  SizedBox(
                    height: 20.h,
                  ),
                  customTextField(imagePath: lock, hintText: password),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      forgotPass,
                      style: TextStyle(
                          color: goldenColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  customButton(
                    isFullScreen: true,
                    gradientStart: goldenStart,
                    gradientEnd: goldenEnd,
                    label: login,
                    boxShadow: [
                      BoxShadow(
                        color: blackColor.withOpacity(0.25),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                    onTap: () {
                      print("object");
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                    }
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  customButton(
                    isFullScreen: true,
                      gradientStart: blueStart,
                      gradientEnd: blueEnd,
                      label: otpLogin),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: dontHaveAccount,
                            style:
                                TextStyle(fontSize: 12.sp, color: blackColor),
                          ),
                          TextSpan(
                            text: signUpNow,
                            style:
                                TextStyle(fontSize: 12.sp, color: goldenColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//dotted border
