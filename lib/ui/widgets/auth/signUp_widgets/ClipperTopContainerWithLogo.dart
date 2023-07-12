import 'package:coffe_play/core/AppData/AppColor.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';class CustomTopClipContainer_SignIn_SignUp_Screens extends StatelessWidget {  String imgPath;  CustomTopClipContainer_SignIn_SignUp_Screens(this.imgPath);  @override  Widget build(BuildContext context) {    return ClipPath(      clipper: ClipperContainerSignUpScreen(),      child: Container(        color: AppColor.mainColorRed,        height: 305.h,        child: Center(          child: SizedBox(            width: double.infinity,            height: double.infinity,            child: Stack(              alignment: Alignment.center,              children: [                SizedBox(                    height: 303.h,                    width: 302.w,                    child: Image.asset('assets/signIn_signUp/${imgPath}')),              ],            ),          ),        ),      ),    );  }}class ClipperContainerSignUpScreen extends CustomClipper<Path> {  @override  Path getClip(Size size) {    double width = size.width;    double height = size.height;    var path = Path();    path.lineTo(0, height - 20.h);    path.quadraticBezierTo(width / 4 - 20.w, height - 60.h, width, height);    path.lineTo(width, 0);    return path;  }  @override  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {    return false;  }}