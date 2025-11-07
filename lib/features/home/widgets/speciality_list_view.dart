import 'package:doctor_appointment_app/features/home/widgets/speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatelessWidget {
  const SpecialityListView({super.key});
   final int itemIndex =10;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemIndex,
        itemBuilder:(BuildContext context, int index){
           return Padding(
             padding:  EdgeInsets.only(right:itemIndex==0?0 : 8.w),
             child: SpecialityItem(),
           );
        } ),
    );
  }
}