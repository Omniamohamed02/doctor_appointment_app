import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';


class DonotHaveAccount extends StatelessWidget {
  const DonotHaveAccount({super.key, required this.onTap, required this.text, required this.screenName});
  final VoidCallback onTap;
  final String text;
  final String screenName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
         // "Don't have an account? ",
          style: FontStylesManager.font12Regular.copyWith(
            color: ColorsManager.darkBlueColor,
          ),
        ),
        TextButton(
          onPressed: () { 
            onTap();
           },
          child: Text(
            screenName,
           // 'Sign Up',
            style: FontStylesManager.font12Regular.copyWith(
              color: ColorsManager.primaryBlueColor,
            ),
          ),
        ),
      ],
    );
  }
}
