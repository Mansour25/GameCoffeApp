import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:coffe_play/core/AppData/AppColor.dart';
import 'package:coffe_play/ui/screens/home/MainHomeScreen.dart';
import 'package:coffe_play/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFDA2F37),
    ),
  );

  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return WillPopScope(
          onWillPop: () {
            return AwesomeDialog(
              context: context,
              dialogType: DialogType.warning,
              animType: AnimType.rightSlide,
              title: 'هل أنت متأكد من الخروج من التطبيق',
              titleTextStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'NeoSans',
                color: AppColor.mainColorRed,
              ),
              btnCancelOnPress: () {},
              btnOkOnPress: () {
                exit(0);
              },
            ).show().then((value) => value);
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            // home: MyCustomSplashScreen(),
            home: MainHomeScreen(),
          ),
        );
      },
    );
  }
}
