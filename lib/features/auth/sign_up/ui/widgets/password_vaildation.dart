import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  Widget build(BuildContext context) {
    return Column(children: [
       ValidationRow('At least 1 lowercase letter', hasLowerCase),
        SizedBox(height: 2.h,),
       ValidationRow('At least 1 uppercase letter', hasUpperCase),
        SizedBox(height: 2.h,),
        ValidationRow(
            'At least 1 special character', hasSpecialCharacters),
         SizedBox(height: 2.h,),
        ValidationRow('At least 1 number', hasNumber),
        SizedBox(height: 2.h,),
       ValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }
}

Widget ValidationRow(String text, bool hasValidated) {
  return Row(
    children: [
      CircleAvatar(radius: 2, backgroundColor: ColorsManager.primaryGreyColor),
      SizedBox(width: 6.w),
      Text(
           text,
        style: FontStylesManager.font12Regular.copyWith(
          color: hasValidated? ColorsManager.primaryGreyColor:ColorsManager.darkBlueColor,
          decoration: hasValidated?TextDecoration.lineThrough :null,
          decorationColor:  Colors.green,
          decorationThickness: 2,
        ),
      ),
    ],
  );
}
