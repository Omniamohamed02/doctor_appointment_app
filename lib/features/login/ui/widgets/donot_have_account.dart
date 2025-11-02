import 'package:doctor_appointment_app/core/route/route_extension.dart';
import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/route/routes.dart';

class DonotHaveAccount extends StatelessWidget {
  const DonotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: FontStylesManager.font12Regular.copyWith(
            color: ColorsManager.DarkBlueColor,
          ),
        ),
        GestureDetector(
          onTap: () {
           context.pushNamed(Routes.signup);
          },
          child: Text(
            'Sign Up',
            style: FontStylesManager.font12Regular.copyWith(
              color: ColorsManager.primaryBlueColor,
            ),
          ),
        ),
      ],
    );
  }
}
