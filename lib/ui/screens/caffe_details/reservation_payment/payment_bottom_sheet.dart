import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import '../../../widgets/public_widgets.dart';class CustomPaymentBottomSheet extends StatelessWidget {  const CustomPaymentBottomSheet({super.key});  @override  Widget build(BuildContext context) {    return Container(      width: double.infinity,      height: 640.h,      padding: EdgeInsets.symmetric(        horizontal: 10.w,      ),      decoration:  const BoxDecoration(        color: Colors.white,        borderRadius: BorderRadius.only(          topLeft: Radius.circular(20),          topRight: Radius.circular(20),        ),      ),     child: Column(       crossAxisAlignment: CrossAxisAlignment.start,       children: [         space_h(15.h),         Align(           alignment: Alignment.center,           child: SizedBox(             width: 32.w,             child: Divider(               color: Colors.black,               height: 3,               thickness: 2.h,             ),           ),         ),         space_h(10.h),         Row(           mainAxisSize: MainAxisSize.max,           // mainAxisAlignment: MainAxisAlignment.spaceAround,           children: [             IconButton(               onPressed: () {                 Navigator.pop(context);               },               icon: const Icon(                 Icons.arrow_back_outlined,                 size: 25,               ),             ),             const Spacer(),             const Text(               'وسيلة الدفع',               style: TextStyle(                   fontSize: 16,                   color: Color(0xFF454545),                   fontFamily: 'NeoSans',                   fontWeight: FontWeight.w600),             ),             SizedBox(               width: 40.w,             ),             const Spacer(),           ],         ),         space_h(15.h),         CustomText(           'من فضلك حدد وسيلة الدفع المراد إعتمادها',           14,           const Color(0xFFB4B8BD),         ),       ],     ),    );  }}