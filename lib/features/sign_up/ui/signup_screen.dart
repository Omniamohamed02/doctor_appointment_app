import 'package:doctor_appointment_app/core/route/route_extension.dart';
import 'package:doctor_appointment_app/core/widgets/app_button.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment_app/core/widgets/auth_column_text.dart';
import 'package:doctor_appointment_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doctor_appointment_app/features/sign_up/ui/widgets/signup_bloc_listener.dart';
import 'package:doctor_appointment_app/features/sign_up/ui/widgets/signup_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
               SignupTextFormFeilds(),  
               const SizedBox(height: 40),
               AppButton(onPressed: (){
                  validateThenDoSignup(context);  
               }, text: 'Create Account',),
               SizedBox(height: 20.h,),
               TermsAndConditions(),
                SizedBox(height: 20.h,),
                DonotHaveAccount(onTap: () { 
                  context.pushNamed(Routes.login);
                 }, text: 'Already have an account yet?', screenName: 'LogIn',),

                 SignupBlocListener(),
           ],),
         ),
        )),
    );
  }
}

void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().signup();
      
    }
  }