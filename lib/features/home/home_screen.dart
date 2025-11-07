import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:doctor_appointment_app/core/widgets/auth_column_text.dart';
import 'package:doctor_appointment_app/features/home/widgets/doctor_item.dart';
import 'package:doctor_appointment_app/features/home/widgets/home_container.dart';
import 'package:doctor_appointment_app/features/home/widgets/speciality_list_view.dart';
import 'package:doctor_appointment_app/features/home/widgets/speciality_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w,vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,),
                AuthColumnText(title: 'Hi, Omnia!',
                titleTextStyle: FontStylesManager.font18Bold.copyWith(
                  color: ColorsManager.darkBlueColor
                ),
                horizontalSpacer: 5.h
                , subTitle: 'How Are You Today?'),
                SizedBox(height: 15.h,),
                HomeContainer(),
                SizedBox(height: 20.h,),
                SpecialityRow(text: 'Doctor Speciality', onPressed: () {  },),
                SizedBox(height: 10.h,),
                SpecialityListView(),
                SizedBox(height: 15.h,),
                SpecialityRow(text: 'Recommendation Doctor', onPressed: () {  },),
                SizedBox(height: 15.h,),
                DoctorItem()

              ],
            ),
          ),
        ),
      ),
    );
  }
}