// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutablesimport 'package:coffe_play/controller/main_screens_controller/details_confrontation_controller.dart';import 'package:coffe_play/core/AppData/AppColor.dart';import 'package:coffe_play/core/AppData/AppImage.dart';import 'package:coffe_play/ui/screens/confrontation/confrontation_screen.dart';import 'package:coffe_play/ui/widgets/home/confrontation_widgets/details_confrontation_widgets/custom_tab_bar.dart';import 'package:coffe_play/ui/widgets/home/confrontation_widgets/details_confrontation_widgets/custom_top_details_coffe_widget.dart';import 'package:coffe_play/ui/widgets/public_widgets.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:get/get.dart';class DetailsConfrontation extends StatelessWidget {  const DetailsConfrontation({super.key});  @override  Widget build(BuildContext context) {    Get.lazyPut(() => DetailsConfrontationController());    return GetBuilder<DetailsConfrontationController>(builder: (logic) {      return DefaultTabController(        length: 2,        child: Scaffold(          backgroundColor: AppColor.mainColorScaffoldWhite,          appBar: AppBar(            backgroundColor: Colors.white,            elevation: 0,            leading: IconButton(              onPressed: () {                Navigator.pop(context);              },              icon: const Icon(                Icons.arrow_back_sharp,                color: Colors.black,              ),            ),          ),          body: Container(            padding: EdgeInsets.symmetric(              horizontal: 10.w,            ),            child: Column(              crossAxisAlignment: CrossAxisAlignment.start,              children: [                CustomTopWidget(),                CustomTabBar(),                Expanded(                  child: TabBarView(                    physics: const NeverScrollableScrollPhysics(),                    children: [                      DetailsConfrontationWidgetScreen(),                      FormingConfrontationWidgetScreen(),                    ],                  ),                ),              ],            ),          ),        ),      );    });  }}class DetailsConfrontationWidgetScreen extends StatelessWidget {  const DetailsConfrontationWidgetScreen({super.key});  @override  Widget build(BuildContext context) {    DetailsConfrontationController logic = Get.find();    return Padding(      padding: EdgeInsets.symmetric(        horizontal: 10.w,      ),      child: Column(        children: [          space_h(24.h),          Container(            width: 215.w,            padding: EdgeInsets.symmetric(              horizontal: 40.w,              vertical: 8.h,            ),            decoration: BoxDecoration(              color: AppColor.mainColorScaffoldWhiteDarker,              borderRadius: BorderRadius.only(                topLeft: Radius.circular(15),                topRight: Radius.circular(15),              ),            ),            child: Center(              child: Text('تحدي البلوت الأسطوري'),            ),          ),          Container(            padding: EdgeInsets.symmetric(              horizontal: 12.w,              vertical: 10.h,            ),            decoration: BoxDecoration(              color: AppColor.mainColorScaffoldWhiteDarker,              borderRadius: BorderRadius.circular(15),            ),            child: Row(              mainAxisAlignment: MainAxisAlignment.spaceEvenly,              children: [                Column(                  children: [                    CustomText('عدد المنتسبين ', 10, AppColor.colorText2),                    space_h(5.h),                    CustomText('12 لاعب', 10, AppColor.colorTextDarker),                  ],                ),                Column(                  children: [                    CustomText('سعر التحدي', 10, AppColor.colorText2),                    space_h(5.h),                    CustomText(                        '5 ريال شامل مشروب', 10, AppColor.colorTextDarker),                  ],                ),                Column(                  children: [                    CustomText('عدد المقاعد الكلي', 10, AppColor.colorText2),                    space_h(5.h),                    CustomText('16 مقعد', 10, AppColor.colorTextDarker),                  ],                ),              ],            ),          ),          space_h(24.h),          CustomText(            'سوف يبدأ التحدي عند إكتمال عدد اللاعبين',            14,            AppColor.colorTextDarker,          ),          space_h(10.h),          space_h(20.h),          Container(            padding: EdgeInsets.symmetric(              horizontal: 5.w,              vertical: 5.h,            ),            decoration: BoxDecoration(              color: AppColor.mainColorScaffoldWhiteDarker,              borderRadius: BorderRadius.circular(15),            ),            child: Row(              children: [                Card(                    shape: RoundedRectangleBorder(                      borderRadius: BorderRadius.circular(10),                    ),                    color: Colors.white,                    child: Padding(                      padding: EdgeInsets.all(12),                      child: Icon(                        Icons.card_giftcard_rounded,                        color: Colors.red,                      ),                    )),                space_w(5.w),                CustomText(                  'سوف يكون هناك جاهئزة للفائز مقدمة من إدارة التطبيق',                  11,                  AppColor.colorTextDarker,                ),              ],            ),          ),          Spacer(),          CustomButton(            () {},            'إنضم الآن للتحدي ',            AppColor.mainColorRed,            Colors.white,          ),          space_h(100.h),        ],      ),    );  }}class FormingConfrontationWidgetScreen extends StatelessWidget {  const FormingConfrontationWidgetScreen({super.key});  @override  Widget build(BuildContext context) {    return Container(      padding: EdgeInsets.symmetric(        horizontal: 10.h,      ),      child: Column(        children: [          space_h(30.h),          SizedBox(            height: 80.h,            child: ListView.builder(              padding: EdgeInsets.zero,              shrinkWrap: true,              itemCount: 4,              scrollDirection: Axis.horizontal,              itemBuilder: (context, index) {                return Padding(                  padding: EdgeInsets.symmetric(                    horizontal: 5.w,                  ),                  child: ItemLevelInFormingConfrontation(1),                );              },            ),          ),          space_h(50.h),          SizedBox(            height: 100.h,            child: ListView.builder(              padding: EdgeInsets.zero,              shrinkWrap: true,              itemCount: 2,              scrollDirection: Axis.horizontal,              itemBuilder: (context, index) {                return Padding(                  padding: EdgeInsets.symmetric(                    horizontal: 20.w,                  ),                  child: ItemLevelInFormingConfrontation(2),                );              },            ),          ),          space_h(50.h),          SizedBox(            height: 160.h,            child: ListView.builder(              padding: EdgeInsets.zero,              shrinkWrap: true,              itemCount: 1,              scrollDirection: Axis.horizontal,              itemBuilder: (context, index) {                return Padding(                  padding: EdgeInsets.symmetric(                    horizontal: 20.w,                  ),                  child: ItemLevelInFormingConfrontation(3),                );              },            ),          ),        ],      ),    );  }}class ItemLevelInFormingConfrontation extends StatelessWidget {  int level;  ItemLevelInFormingConfrontation(this.level);  // level => 1, 2, 3  @override  Widget build(BuildContext context) {    double height = 0;    double width = 0;    double circle_h = 0;    double circle_w = 0;    double margin_horizontal = 0;    double margin_vertical = 0;    switch (level) {      case 1:        height = 60.h;        width = 54.w;        circle_h = 18.h;        circle_w = 18.w;        margin_horizontal = 10.w;        margin_vertical = 10.h;        break;      case 2:        height = 78.h;        width = 87.w;        circle_h = 26.h;        circle_w = 26.w;        margin_horizontal = 13.w;        margin_vertical = 13.h;        break;      case 3:        height = 120.h;        width = 160.w;        circle_h = 48.h;        circle_w = 48.w;        margin_horizontal = 24.w;        margin_vertical = 24.h;        break;    }    return Stack(      children: [        Container(          margin: EdgeInsets.symmetric(            horizontal: margin_horizontal,            vertical: margin_vertical,          ),          width: width,          height: height,          decoration: BoxDecoration(            color: Colors.blue,            borderRadius: BorderRadius.circular(10),          ),        ),        Positioned(          top: 0,          right: width / 2,          child: SizedBox(            width: circle_w,            height: circle_h,            child: CircleAvatar(              backgroundColor: Colors.black,            ),          ),        ),        Positioned(          bottom: 0,          right: width / 2,          child: SizedBox(            width: circle_w,            height: circle_h,            child: CircleAvatar(              backgroundColor: Colors.black,            ),          ),        ),        Positioned(          top: height / 2,          left: 0,          child: SizedBox(            width: circle_w,            height: circle_h,            child: CircleAvatar(              backgroundColor: Colors.black,            ),          ),        ),        Positioned(          top: height / 2,          right: 0,          child: SizedBox(            width: circle_w,            height: circle_h,            child: CircleAvatar(              backgroundColor: Colors.black,            ),          ),        ),      ],    );  }}