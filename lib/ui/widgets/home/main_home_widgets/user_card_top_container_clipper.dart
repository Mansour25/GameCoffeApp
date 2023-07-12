import 'package:coffe_play/core/AppData/AppColor.dart';import 'package:coffe_play/data/static_data.dart';import 'package:coffe_play/ui/widgets/public_widgets.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';class UserCardTopContainerClipper extends StatelessWidget {  const UserCardTopContainerClipper({super.key});  @override  Widget build(BuildContext context) {    return Positioned(      top: 85.h,      left: 0,      right: 0,      child: Padding(        padding: EdgeInsets.symmetric(          horizontal: 16.w,        ),        child: PhysicalModel(          elevation: 8,          borderRadius: BorderRadius.circular(10),          color: Colors.grey,          child: Container(            height: 184.h,            decoration: BoxDecoration(              color: Colors.white,              borderRadius: BorderRadius.circular(10),            ),            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),            child: Column(              children: [                Row(                  children: [                    SizedBox(                      height: 58.h,                      width: 58.w,                      child:                          Image.asset('assets/icons/${StaticData.user_avatar}'),                    ),                    space_w(12.w),                    Column(                      crossAxisAlignment: CrossAxisAlignment.start,                      children: [                        CustomTextUserCard(                          'أحمد عبد العزيز',                          15,                          Color(0xFF454545),                          true,                        ),                        CustomTextUserCard(                          'example@gmail.com',                          11,                          Color(0xFFB4B8BD),                          false,                        ),                        CustomTextUserCard(                          'ID : 20202144',                          11,                          Color(0xFFB4B8BD),                          false,                        ),                      ],                    ),                  ],                ),                space_h(24.h),                CustomButtonUserCard(),              ],            ),          ),        ),      ),    );  }}class CustomTextUserCard extends StatelessWidget {  String txt;  double size;  Color color;  bool isTitle;  CustomTextUserCard(this.txt, this.size, this.color, this.isTitle);  @override  Widget build(BuildContext context) {    return Padding(      padding: EdgeInsets.symmetric(        vertical: 2.h,      ),      child: Text(        txt,        style: TextStyle(          color: color,          fontFamily: 'NeoSans',          fontSize: size,          fontWeight: isTitle ? FontWeight.w600 : FontWeight.w500,        ),      ),    );  }}class CustomButtonUserCard extends StatelessWidget {  const CustomButtonUserCard({super.key});  @override  Widget build(BuildContext context) {    return GestureDetector(      onTap: () {},      child: Container(        decoration: BoxDecoration(          color: AppColor.mainColorRed,          borderRadius: BorderRadius.circular(8),        ),        width: 343.w,        height: 66.h,        child: Center(          child: Column(            mainAxisAlignment: MainAxisAlignment.center,            crossAxisAlignment: CrossAxisAlignment.center,            children: [              Text(                'الألعاب المحجوزة',                style: TextStyle(                  fontSize: 12,                  color: Colors.white,                  fontWeight: FontWeight.w400,                  fontFamily: 'NeoSans',                ),              ),              space_h(5.h),              Text(                '3 ألعاب',                style: TextStyle(                  fontSize: 14,                  color: Colors.white,                  fontWeight: FontWeight.w600,                  fontFamily: 'NeoSans',                ),              ),            ],          ),        ),      ),    );  }}