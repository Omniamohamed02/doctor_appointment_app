import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupTextFormFeilds extends StatelessWidget {
  const SignupTextFormFeilds({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child:  Column(
      children:  [
       AppTextFormField(
        controller: context.read<SignupCubit>().nameController,
        hintText: ' Name', 
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                }),
                const SizedBox(height: 20),
               AppTextFormField(
                 controller: context.read<SignupCubit>().emailController,
                hintText: 'Email', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
               const SizedBox(height: 20),
               AppTextFormField(
                 controller: context.read<SignupCubit>().phoneController,
                hintText: 'Phone Number', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
               const SizedBox(height: 20),
               AppTextFormField(hintText: 'Gender', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
               const SizedBox(height: 20),
               AppTextFormField(
                 controller: context.read<SignupCubit>().passwordController,
                hintText: 'Password', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
               const SizedBox(height: 20),
               AppTextFormField(
                 controller: context.read<SignupCubit>().passwordConfirmationController,
                hintText: 'Confirm Password', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
      ],
    ));
  }
}