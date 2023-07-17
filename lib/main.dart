import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:coffe_play/core/AppData/AppColor.dart';
import 'package:coffe_play/data/user_information.dart';
import 'package:coffe_play/localaization/app_locale.dart';
import 'package:coffe_play/localaization/localaization_settings.dart';
import 'package:coffe_play/localaization/test_translate.dart';

import 'package:coffe_play/ui/screens/splash/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'ui/screens/home/MainHomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFDA2F37),
    ),
  );

  UserInformation.user = UserStatus.visitor;

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) {
    runApp(const MainScreen());
  });
}




// Locale _locale;
//
// void setLocale(Locale value) {
//   setState(() {
//     _locale = value;
//   });
// }



// onPressed: () => MyApp.of(context).setLocale(Locale.fromSubtags(languageCode: 'en')),






class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // AppLocale.of(context).getTranslated('hello');
    LocalizationSettings localizationSettings = LocalizationSettings();
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
            ).show().then(
                  (value) => value,
                );
          },
          child: MaterialApp(
            localizationsDelegates: const [
              AppLocale.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale("en", ""),
              Locale("ar", ""),
            ],

            localeResolutionCallback: (currentLang, supportLang) {
              if (currentLang != null) {
                for (Locale locale in supportLang) {
                  if (locale.languageCode == currentLang.languageCode) {
                    return currentLang;
                  }
                }
              }
              return supportLang.first;
            },
            // locale: const Locale('ar'),
            debugShowCheckedModeBanner: false,
            home: MyCustomSplashScreen(),
            // home: const MainHomeScreen(),
          ),
        );
      },
    );
  }
}
