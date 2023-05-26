import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_demo/screens/screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(390, 844),
      builder: (context, child) {
        return child!;
      },
      child: MaterialApp(
        title: 'Mobile Screen Demo',
        theme: ThemeData(
        
         textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
         ),
         
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
