import 'package:flutter/cupertino.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';Widget CustomTextCardCaffe(    String txt,    double size,    Color color,    ) {  return Padding(    padding:  EdgeInsets.symmetric(      vertical: 1.h,    ),    child: Text(      txt,      style: TextStyle(        fontSize: size,        color: color,        fontFamily: 'NeoSans',        fontWeight: FontWeight.w500,      ),    ),  );}