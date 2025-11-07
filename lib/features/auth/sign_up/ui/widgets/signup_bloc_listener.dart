import 'package:doctor_appointment_app/core/route/route_extension.dart';
import 'package:doctor_appointment_app/core/route/routes.dart';
import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:doctor_appointment_app/features/auth/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit,SignupState>(
      listenWhen: (previous, current) =>
        current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // Show loading indicator
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          success: (loginResponseModel ){
            context.pop();
            context.pushReplacementNamed(Routes.home);
          },  
          error: (error){
            setupErrorState(context, error);
          }
        );
      },
      child: const SizedBox.shrink()
    );
  }}

  
  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: FontStylesManager.font16SemiBold.copyWith(color: ColorsManager.darkBlueColor),       ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: FontStylesManager.font14Medium.copyWith(color: ColorsManager.primaryBlueColor),
            ),
          ),
        ],
      ),
    );
  }
