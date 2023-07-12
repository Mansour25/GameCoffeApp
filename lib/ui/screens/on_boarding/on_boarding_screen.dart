import 'dart:io';import 'package:awesome_dialog/awesome_dialog.dart';import 'package:coffe_play/controller/on_boarding/on_boarding_controller.dart';import 'package:coffe_play/core/AppData/AppColor.dart';import 'package:coffe_play/data/static_data.dart';import 'package:coffe_play/ui/widgets/auth/onBoarding_widgets/ClipperContainerWithLogo.dart';import 'package:coffe_play/ui/widgets/auth/onBoarding_widgets/custom_next_skip_button.dart';import 'package:coffe_play/ui/widgets/auth/onBoarding_widgets/custom_title_description.dart';import 'package:coffe_play/ui/widgets/auth/onBoarding_widgets/smooth_page_indicator.dart';import 'package:coffe_play/ui/widgets/public_widgets.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:get/get.dart';import '../../widgets/auth/onBoarding_widgets/ClipperContainer.dart';class OnBoardingScreen extends StatelessWidget {  const OnBoardingScreen({super.key});  @override  Widget build(BuildContext context) {    return WillPopScope(        onWillPop: () {          return AwesomeDialog(            context: context,            dialogType: DialogType.warning,            animType: AnimType.rightSlide,            title: 'هل أنت متأكد من الخروج من التطبيق',            titleTextStyle: TextStyle(              fontSize: 16,              fontWeight: FontWeight.w700,              fontFamily: 'NeoSans',              color: AppColor.mainColorRed,            ),            btnCancelOnPress: () {},            btnOkOnPress: () {              exit(0);            },          ).show().then((value) => value);        },        child: Scaffold(          backgroundColor: AppColor.mainColorScaffoldWhite,          body: const OnBoardingBody(),        ));  }}class OnBoardingBody extends StatelessWidget {  const OnBoardingBody({super.key});  @override  Widget build(BuildContext context) {    Get.put(OnBoardingController());    return GetBuilder<OnBoardingController>(builder: (logic) {      return PageView.builder(        reverse: true,        itemCount: logic.lengthPages,        controller: logic.pageController,        physics: const NeverScrollableScrollPhysics(),        itemBuilder: (context, index) {          return CustomOnBoardingItem(index, logic);        },      );    });  }}class CustomOnBoardingItem extends StatelessWidget {  int index;  OnBoardingController logic;  CustomOnBoardingItem(this.index, this.logic);  @override  Widget build(BuildContext context) {    return Column(      children: [        CustomClipContainerWithLogo(index),        Expanded(          child: Container(            color: AppColor.mainColorScaffoldWhite,            child: Column(              crossAxisAlignment: CrossAxisAlignment.center,              children: [                CustomTitle(index),                space_h(15.h),                CustomDescription(index),                space_h(23.h),                IndicatorList(index),                space_h(34.h),                CustomNextButton(logic),                space_h(24.h),                CustomSkip(logic),              ],            ),          ),        ),      ],    );  }}