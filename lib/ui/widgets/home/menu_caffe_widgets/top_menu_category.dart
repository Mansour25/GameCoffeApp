import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:get/get.dart';import '../../../../controller/details_caffe/menu_caffe_controller.dart';import '../../../../core/AppData/AppColor.dart';import '../../public_widgets.dart';class TopMenuCategoryCaffe extends StatelessWidget {  const TopMenuCategoryCaffe({super.key});  @override  Widget build(BuildContext context) {    MenuCaffeController logic = Get.find();    return SizedBox(        height: 38.h,        child: ListView.separated(          physics: const BouncingScrollPhysics(),          shrinkWrap: true,          scrollDirection: Axis.horizontal,          itemCount: logic.menuCategory.length,          itemBuilder: (context, index) {            return GestureDetector(                onTap: () {                  logic.changeCategorySelected(index);                },                child: AnimatedContainer(                  duration: const Duration(milliseconds: 400),                  width: 120.w,                  height: 38.h,                  decoration: BoxDecoration(                    color: logic.CategorySelected == index                        ? AppColor.mainColorRed                        : Colors.white,                    borderRadius: BorderRadius.circular(12),                  ),                  padding: EdgeInsets.symmetric(                    horizontal: 3.w,                    // vertical: 2.h,                  ),                  child: Row(                    children: [                      SizedBox(                        width: 28.w,                        height: 28.h,                        child: Card(                          color: logic.CategorySelected == index                              ? Colors.white                              : const Color(0xFFB4B8BD),                          child: Image.asset(                            logic.iconNames[index],                            color: logic.CategorySelected == index                                ? Colors.red                                : Colors.white,                          ),                        ),                      ),                      space_w(15.w),                      CustomText(                        logic.menuCategory[index],                        10,                        logic.CategorySelected == index                            ? Colors.white                            : const Color(0xFFB4B8BD),                      ),                    ],                  ),                ));          },          separatorBuilder: (context, index) {            return space_w(15.w);          },        ));  }}