import 'package:doctor_appointment_app/core/route/route_extension.dart';
import 'package:doctor_appointment_app/core/widgets/app_button.dart';
import 'package:doctor_appointment_app/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment_app/features/auth/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor_appointment_app/features/auth/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/route/routes.dart';
import '../../../../core/widgets/auth_column_text.dart';
import 'widgets/donot_have_account.dart';
import 'widgets/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.0.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40.h,),
                AuthColumnText(
                  title: 'Welcome Back',
                  subTitle: 'We\'re excited to have you back, can\'t wait to\n see what you\'ve been up to since you last\n logged in.',
                ),
                SizedBox(height: 40.h,),
                EmailAndPassword(),
                SizedBox(height: 60.h,),
                AppButton(onPressed: (){
                  validateThenDoLogin(context);

                }, text:'Login'),
                SizedBox(height: 20.h,),
                TermsAndConditions(),
                SizedBox(height: 8.h,),
                DonotHaveAccount(onTap: () { 
                 context.pushNamed(Routes.signup);
                 }, text: 'Don\'t have an account?', screenName: 'Sign Up',),
                 LoginBlocListener(),
        
              ],
              
            ),
          ),
        ),
      ),
      );
  }
}
void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
      
    }
  }
