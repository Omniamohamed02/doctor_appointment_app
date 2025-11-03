import 'package:doctor_appointment_app/core/route/route_extension.dart';
import 'package:doctor_appointment_app/core/widgets/app_button.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment_app/core/widgets/auth_column_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/route/routes.dart';
import '../../login/ui/widgets/donot_have_account.dart';
import '../../login/ui/widgets/terms_and_conditions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(30),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AuthColumnText(title: 'Create Account', 
              subTitle: 'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!'),
               const SizedBox(height: 20),
                AppTextFormField(hintText: ' Name', 
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                }),
                const SizedBox(height: 20),
               AppTextFormField(hintText: 'Email', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
               const SizedBox(height: 20),
               AppTextFormField(hintText: 'Phone Number', validator: (value) {
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
               AppTextFormField(hintText: 'Password', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
               const SizedBox(height: 20),
               AppTextFormField(hintText: 'Confirm Password', validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'This field is required';
                 }
                 return null;
               }),
               const SizedBox(height: 40),
               AppButton(onPressed: (){}, text: 'Create Account',),
               SizedBox(height: 20.h,),
               TermsAndConditions(),
                SizedBox(height: 20.h,),
                DonotHaveAccount(onTap: () { 
                  context.pushNamed(Routes.login);
                 }, text: 'Already have an account yet?', screenName: 'LogIn',),

                 
           ],),
         ),
        )),
    );
  }
}