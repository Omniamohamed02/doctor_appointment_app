import 'package:doctor_appointment_app/core/route/route_extension.dart';
import 'package:doctor_appointment_app/core/route/routes.dart';
import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:doctor_appointment_app/features/auth/login/data/models/login_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
