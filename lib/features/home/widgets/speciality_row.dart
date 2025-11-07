import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';

class SpecialityRow extends StatelessWidget {
  const SpecialityRow({super.key, required this.text,  required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Text( text,
       style: FontStylesManager.font18SemiBold.copyWith(
        color: ColorsManager.darkBlueColor
       ),),
       TextButton(onPressed: onPressed,
        child: Text('See All',style: FontStylesManager.font12Regular.copyWith(
          color: ColorsManager.seeMoreColor
        ),))
      ],
    );
  }
}