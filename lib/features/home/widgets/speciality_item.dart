import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityItem extends StatelessWidget {
  const SpecialityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 73.w,
      child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50.r,
            width: 50.r,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: ColorsManager.seeMoreListBackgroundColor ,
              child: SvgPicture.asset('assets/svgs/doctor-svgrepo-com (1).svg',
              height: 24.r,
              width: 24.r,)
            ),
          ),
         Text('General',style: FontStylesManager.font12Regular.copyWith(
          color: ColorsManager.darkBlueColor
         ),)
        ],
      ),
    );
  }
}