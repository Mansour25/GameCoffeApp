import 'package:coffe_play/core/AppData/AppColor.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:get/get.dart';class IndicatorList extends StatelessWidget {  int index;  IndicatorList(this.index);  @override  Widget build(BuildContext context) {    return Padding(      padding: EdgeInsetsDirectional.only(        start: Get.width / 2 - 60.w,      ),      child: SizedBox(        height: 7.h,        child: ListView.builder(          itemCount: 3,          scrollDirection: Axis.horizontal,          // reverse: true,          itemBuilder: (context, _index) {            return AnimatedContainer(              margin: EdgeInsets.symmetric(horizontal: 5.w),              height: 4.h,              width: _index == index ? 30.w : 8.w,              duration: const Duration(milliseconds: 2000),              decoration: BoxDecoration(                color: _index == index ? AppColor.mainColorRed : Colors.grey,                borderRadius: BorderRadius.circular(8),              ),            );          },        ),      ),    );  }}