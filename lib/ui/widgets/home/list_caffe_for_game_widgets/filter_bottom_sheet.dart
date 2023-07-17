import 'package:coffe_play/controller/home/list_caffe_available_controller.dart';import 'package:coffe_play/ui/widgets/public_widgets.dart';import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:get/get.dart';import 'package:syncfusion_flutter_sliders/sliders.dart';import '../../../../core/AppData/AppColor.dart';import 'custom_search_and_filter.dart';class CustomFilterBottomSheetWidget extends StatelessWidget {  const CustomFilterBottomSheetWidget({super.key});  @override  Widget build(BuildContext context) {    return GetBuilder<ListCaffeAvaiableController>(builder: (logic) {      return Container(        height: 583.h,        padding: EdgeInsets.symmetric(          horizontal: 10.w,        ),        decoration: const BoxDecoration(          color: Colors.white,          borderRadius: BorderRadius.only(            topLeft: Radius.circular(25),            topRight: Radius.circular(20),          ),        ),        child: Column(          crossAxisAlignment: CrossAxisAlignment.start,          children: [            space_h(15.h),            Align(              alignment: Alignment.center,              child: SizedBox(                width: 32.w,                child: Divider(                  color: Colors.black,                  height: 3,                  thickness: 2.h,                ),              ),            ),            space_h(10.h),            Row(              mainAxisSize: MainAxisSize.max,              // mainAxisAlignment: MainAxisAlignment.spaceAround,              children: [                IconButton(                  onPressed: () {                    Navigator.pop(context);                  },                  icon: const Icon(                    Icons.arrow_back_outlined,                    size: 25,                  ),                ),                const Spacer(),                const Text(                  'فلتر',                  style: TextStyle(                      fontSize: 16,                      color: Color(0xFF454545),                      fontFamily: 'NeoSans',                      fontWeight: FontWeight.w600),                ),                SizedBox(                  width: 40.w,                ),                const Spacer(),              ],            ),            space_h(23.h),            CustomText(              'تقييم الكافي',              14,              const Color(0xFF454545),            ),            space_h(15.h),            const CustomRateColumnWidget(),            Padding(              padding: EdgeInsets.symmetric(vertical: 5.h),              child: const Divider(                color: Colors.grey,              ),            ),            CustomText(              'السعر المتراوح',              14,              const Color(0xFF454545),            ),            SfRangeSlider(              min: 0.0,              max: 100.0,              values: logic.range,              interval: 20,              showTicks: true,              activeColor: Colors.red,              inactiveColor: Colors.grey,              showLabels: true,              enableTooltip: true,              tooltipTextFormatterCallback: (actualValue, formattedText) {                return '${formattedText} ريال  ';              },              minorTicksPerInterval: 1,              onChanged: (values) {                logic.changeSliderValue(values);              },            ),            space_h(30.h),            CustomText(              'ترتيب حسب',              14,              const Color(0xFF454545),            ),            space_h(15.h),            const CustomGridView(),            const Spacer(),            CustomButton(              () => Navigator.pop(context),              'تطبيق الفلتر',              AppColor.mainColorRed,              Colors.white,            ),            space_h(20.h),          ],        ),      );    });  }}class CustomGridView extends StatelessWidget {  const CustomGridView({super.key});  @override  Widget build(BuildContext context) {    return GetBuilder<ListCaffeAvaiableController>(builder: (logic) {      return GridView.builder(        shrinkWrap: true,        itemCount: 4,        padding: EdgeInsets.only(          left: 150.w,        ),        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(          crossAxisCount: 2,          mainAxisExtent: 33.h,          mainAxisSpacing: 12.h,          crossAxisSpacing: 20.w,        ),        itemBuilder: (context, index) {          return GestureDetector(            onTap: () {              logic.changeSelectGridView(index);            },            child: Container(              decoration: BoxDecoration(                color: logic.selectGridView == index                    ? AppColor.mainColorRed                    : AppColor.mainColorScaffoldWhiteDarker,                borderRadius: BorderRadius.circular(25),              ),              height: 33.h,              width: 107.w,              alignment: Alignment.center,              child: CustomText(                  logic.txtGridViewItem[index],                  12,                  logic.selectGridView == index                      ? Colors.white                      : const Color(0xFFB4B8BD)),            ),          );          ;        },      );    });  }}class CustomRateColumnWidget extends StatelessWidget {  const CustomRateColumnWidget({super.key});  @override  Widget build(BuildContext context) {    return GetBuilder<ListCaffeAvaiableController>(builder: (logic) {      return ListView.builder(        physics: const NeverScrollableScrollPhysics(),        reverse: true,        itemCount: 4,        shrinkWrap: true,        itemBuilder: (context, mainIndex) {          int rate = mainIndex + 2;          return GestureDetector(            onTap: () {              logic.change_selectRate(mainIndex);            },            child: Row(              children: [                ...List.generate(5, (index) {                  return Padding(                    padding: EdgeInsets.symmetric(                      vertical: 3.h,                      horizontal: 3.w,                    ),                    child: (rate > index)                        ? const Icon(                            Icons.star,                            color: Colors.amber,                          )                        : const Icon(Icons.star_border),                  );                }),                space_w(12.w),                CustomText(                  '${mainIndex + 2}  نجوم وأكثر',                  12,                  const Color(0xFF4F4F51),                ),                const Spacer(),                SizedBox(                  child: mainIndex == logic.selectRate                      ? const Icon(                          Icons.circle,                          color: Colors.red,                        )                      : const Icon(                          Icons.circle_outlined,                          color: Colors.red,                        ),                ),              ],            ),          );        },      );    });  }}