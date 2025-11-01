import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorPhotoAndText extends StatelessWidget {
  const DoctorPhotoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        
        ),
        Positioned(
          bottom: 30.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\n Appointment App',
            textAlign: TextAlign.center,
            style: FontStylesManager.font32Bold.copyWith(
              color: ColorsManager.primaryColor,
              height: 1.2,
             
            ),
          ) ,)
      ],

    );
  }
}