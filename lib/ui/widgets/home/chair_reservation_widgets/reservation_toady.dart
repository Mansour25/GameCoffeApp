import 'package:coffe_play/controller/details_caffe/chair_reservation_controller.dart';import 'package:coffe_play/ui/screens/caffe_details/reservation_payment/chair_reservation_screen.dart';import 'package:coffe_play/ui/widgets/public_widgets.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:get/get.dart';import 'reservation_payment/custom_date_and_time_container.dart';class ReservationToday extends StatelessWidget {  const ReservationToday({super.key});  @override  Widget build(BuildContext context) {    ChairReservationController logic = Get.find();    return Container(        decoration: BoxDecoration(          border: Border.all(              color: logic.reservationToday == true ? Colors.red : Colors.transparent          ),          color:          logic.reservationToday == true ? Color(0xFFF6F6F6) : Colors.white,          borderRadius: BorderRadius.circular(15),        ),        padding: EdgeInsets.symmetric(          horizontal: 15.w,          vertical: 10.h,        ),        margin: EdgeInsets.only(          top: 20.h,        ),        child: Column(          crossAxisAlignment: CrossAxisAlignment.start,          children: [            space_h(10.h),            GestureDetector(                onTap: () {                  logic.changeReservationTime(true);                },                child: Row(                  children: [                    CustomText('حجز اليوم', 16, Color(0xFF454545)),                    Spacer(),                    Icon(                      logic.reservationToday == true                          ? Icons.circle                          : Icons.circle_outlined,                      size: 20,                      color: logic.reservationToday ? Colors.red : Colors.red,                    ),                  ],                )),            space_h(8.h),            CustomText(                'من فضلك حدد الوقت المراد الحجز فيه', 12, Color(0xFFB4B8BD)),            space_h(12.h),            // حجز اليوم            CustomDateTimeContainer(                  () {                if (logic.reservationToday == true) {                  showTimePicker(context: context, initialTime: TimeOfDay.now())                      .then((value) {                    if (value != null) {                      logic.todayTime = logic.formatTime(value);                      logic.update();                    }                  });                }              },              logic.todayTime.isEmpty                  ? logic.formatTime(TimeOfDay.now())                  : logic.todayTime,logic.reservationToday == false ? false :true,            ),            space_h(10.h),          ],        ));  }}