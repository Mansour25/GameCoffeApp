import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import '../../public_widgets.dart';class TopTitleAndBackIcon extends StatelessWidget {  const TopTitleAndBackIcon({super.key});  @override  Widget build(BuildContext context) {    return Row(      children: [        IconButton(          onPressed: () {            Navigator.pop(context);          },          icon: const Icon(            Icons.arrow_back_outlined,            size: 30,          ),        ),        space_w(65.w),        CustomText(          'حجز مقعد طاولة رقم ',          16,          Colors.black,          fontWeight: FontWeight.w600,        ),        space_w(10.w),        CustomText(          '( 1 )',          12,          Colors.red,          fontWeight: FontWeight.bold,        ),      ],    );  }}