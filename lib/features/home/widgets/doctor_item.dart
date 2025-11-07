import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     height: 126.h,
     color: Colors.white,
     child: Row(
      children: [
        Container(
          width: 110.w,
          height: 110.h,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(12.r),
            image: DecorationImage(image: AssetImage('assets/images/home_doctor.png'))
          ),
        ), 
        SizedBox(width: 15.w,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text('Dr. Randy Wigham',style:FontStylesManager.font18SemiBold.copyWith(color: ColorsManager.darkBlueColor) ,),
             SizedBox(height: 10.h,),
             Text('General | RSUD Gatot Subroto',style: FontStylesManager.font12Regular.copyWith(color: ColorsManager.primaryGreyColor),)
            ],
          ),
        )
      ],
     ),
    );
  }
}