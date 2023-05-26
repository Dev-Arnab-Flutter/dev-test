import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final iconColor = Color(0xffCCCCCC);
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Container(),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  0.9
                ],
                colors: [
                  Color(0xff0052BE),
                  Color(0xff0B7DC4),
                ])),
        // onPressed: () {},
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomAppBar(
          color: Colors.green,
          shape: const CircularNotchedRectangle(),
          // notchMargin: 5,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                // color: Colors.green,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: iconColor,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(color: iconColor),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: iconColor,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(color: iconColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: iconColor,
                          ),
                          Text(
                            'Setting',
                            style: TextStyle(color: iconColor),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: iconColor,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(color: iconColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
   
    );
  }
}

// class CustomClipperWithBorderRadius extends CustomClipper<Path> {
//   final double borderRadius;

//   CustomClipperWithBorderRadius(this.borderRadius);

//   @override
//   Path getClip(Size size) {
//     final radius = size.height * 0.1;
//     final path = Path();

//     path.lineTo(0, 0);
//     path.moveTo(0, radius);
//     path.arcToPoint(Offset(radius, 0), radius: Radius.circular(10));
//     path.lineTo(size.width - radius, 0);

//     path.arcToPoint(Offset(size.width, radius), radius: Radius.circular(10));
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);

//     // path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }