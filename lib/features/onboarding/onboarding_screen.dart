import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/features/onboarding/widget/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/font_styles_manager.dart';
import 'widget/doctor_photo_and_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: LogoAndName(),
              ),
              DoctorPhotoAndText(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments \n easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: FontStylesManager.font12Regular.copyWith(
                        color: ColorsManager.primaryGreyColor,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GetStartedButton(),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});
  
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child: Text(
          'Get Started',
          style: FontStylesManager.font18Medium.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}