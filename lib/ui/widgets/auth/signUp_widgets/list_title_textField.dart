import 'package:coffe_play/data/static_data.dart';import 'package:coffe_play/ui/widgets/public_widgets.dart';import 'package:flutter/material.dart';import '../../../../core/AppData/AppImage.dart';class CustomListTextField extends StatelessWidget {  const CustomListTextField({super.key});  @override  Widget build(BuildContext context) {    return Column(      children: [        CustomTitleAndTextField(          'الإسم كامل',          'Name',          TextEditingController(),          AppImageName.person_avatar,          TextInputType.text,          false,        ),        CustomTitleAndTextField(          'البريد الإلكتروني',          'example@gmail.com',          TextEditingController(),          AppImageName.email,          TextInputType.emailAddress,          false,        ),        CustomTitleAndTextField(          'كلمة المرور',          '******************',          TextEditingController(),          AppImageName.lock,          TextInputType.visiblePassword,          true,        ),        CustomTitleAndTextField(          'تأكيد كلمة المرور',          '******************',          TextEditingController(),          AppImageName.pass_equal,          TextInputType.visiblePassword,          true,        ),      ],    );  }}