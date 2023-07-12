import 'package:coffe_play/controller/auth/signUp_contorller.dart';import 'package:coffe_play/core/AppData/AppColor.dart';import 'package:coffe_play/data/static_data.dart';import 'package:coffe_play/ui/widgets/public_widgets.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';class CustomSelectSexAndTitle extends StatelessWidget {  SignUpController logic;  CustomSelectSexAndTitle(this.logic);  @override  Widget build(BuildContext context) {    return Column(      crossAxisAlignment: CrossAxisAlignment.start,      children: [        const Text(          'تحديد الجنس',          style: TextStyle(            fontFamily: 'NeoSans',            color: Color(0xFF454545),            fontSize: 12,            fontWeight: FontWeight.w700,          ),        ),        space_h(12.h),        Row(          children: [            CustomMaleAndFemale(              StaticData.male,              true,              logic.maleSelected,              logic,            ),            space_w(12.w),            CustomMaleAndFemale(              StaticData.female,              false,              logic.maleSelected,              logic,            ),          ],        ),      ],    );  }}class CustomMaleAndFemale extends StatelessWidget {  String imgPath;  bool isMale;  bool isSelect;  SignUpController logic;  CustomMaleAndFemale(this.imgPath, this.isMale, this.isSelect, this.logic);  @override  Widget build(BuildContext context) {    return GestureDetector(        onTap: () {          logic.change_select();        },        child: Container(          width: 75.w,          height: 85.h,          decoration: BoxDecoration(            color: AppColor.mainColorScaffoldWhite,            borderRadius: BorderRadius.circular(8),            border: Border.all(              width: 1,              color: logic.maleSelected == isMale                  ? const Color(0xFFDA2F37)                  : const Color(0xFFB4B8BD),            ),          ),          child: Column(            mainAxisAlignment: MainAxisAlignment.center,            crossAxisAlignment: CrossAxisAlignment.center,            children: [              Visibility(                visible: logic.maleSelected == isMale,                child: Align(                  alignment: Alignment.centerRight,                  child: Padding(                    padding: EdgeInsets.only(                      right: 10.w,                    ),                    child: Image.asset(                      'assets/icons/${StaticData.checkTrue}',                      scale: 0.8,                    ),                  ),                ),              ),              Row(                mainAxisAlignment: MainAxisAlignment.center,                children: [                  Image.asset(                    'assets/icons/$imgPath',                    scale: 0.8,                  ),                ],              ),              space_h(10.h),              Text(                isMale ? 'ذكر' : 'أنثى',                style: TextStyle(                  fontFamily: 'NeoSans',                  color: logic.maleSelected == isMale                      ? Color(0xFF454545)                      : Color(0xFFB4B8BD),                  fontSize: 10,                  fontWeight: FontWeight.w700,                ),              ),            ],          ),        ));  }}