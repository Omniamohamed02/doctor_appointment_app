import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthColumnText extends StatelessWidget {
  const AuthColumnText({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
        title,
        
        style: FontStylesManager.font24Bold.copyWith(
          color: ColorsManager.primaryBlueColor,
          height: 1.3,
        ),),
      SizedBox(height: 15.h,),
      Text(subTitle,
      style: FontStylesManager.font14Regular.copyWith(
        color: ColorsManager.primaryGreyColor,
        height: 1.5,
      ))


    ],);
  }
}