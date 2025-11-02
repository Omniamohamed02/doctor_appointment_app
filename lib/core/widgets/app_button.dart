import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key,
   required this.onPressed,
    required this.text});

   final VoidCallback onPressed;
   final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
       style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.primaryBlueColor,
          minimumSize: Size(double.infinity, 52.h),
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
       ),
       child: Text(text,
        style: FontStylesManager.font16SemiBold.copyWith(
            color: Colors.white,),),
       
       );
  }
}