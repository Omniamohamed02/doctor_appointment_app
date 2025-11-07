import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
             horizontal: 16.w,
            vertical: 16.h),
            width: double.infinity,
            height: 165.h ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image:DecorationImage(
                image:  AssetImage('assets/images/home_background.png'),
                fit: BoxFit.cover)
            ),
           child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Find Your Doctor\n and book\n an appointment',
              style: FontStylesManager.font18Medium.copyWith(
                color: Colors.white
              ),),
              SizedBox(height: 16.h,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:Size(109.w, 40.h)
                ),
                onPressed: (){},
                 child: Text('find doctor',style: FontStylesManager.font12Regular.copyWith(
                color: ColorsManager.primaryBlueColor
              ),),
              )
            ],
          ),
          ),
        
          Positioned(
            right: 10.w,
            top: 0,
            child: Image.asset(
              'assets/images/home_doctor.png',
              height: 200.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}