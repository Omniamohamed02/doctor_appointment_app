import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderDropdownFeild extends StatelessWidget {
  const GenderDropdownFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit= context.read<SignupCubit>();
    return DropdownButtonFormField(
      decoration: InputDecoration(
        hint: Text('Select Gender',style: FontStylesManager.font14Regular.copyWith(
          color: ColorsManager.lightGreyColor,)),
          fillColor: ColorsManager.textFormFieldBorderColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
            color: ColorsManager.textFormFeildBackgroundColor,
           ),
          ),
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
            color: ColorsManager.textFormFeildBackgroundColor,
            width: 1.0,), 
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
            color: ColorsManager.textFormFeildBackgroundColor,
            width: 1.0,), 
          ), 
          errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
          
        ),
       
    ),
    value: cubit.selectedGender  ,
     items: [
      DropdownMenuItem(
        value: 0,
        child: Text('Female')),
         DropdownMenuItem(
        value: 1,
        child: Text('Male'))
    ],
     onChanged: (value) { 
       cubit.selectedGender=value;

      },
      validator: (value) {
        if(value == null){
        return 'Please select your gender';
        }
        return null;
      },
      
      );
}
}