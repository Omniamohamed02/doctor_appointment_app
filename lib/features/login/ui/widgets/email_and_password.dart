import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  //final _formKey = GlobalKey<FormState>();  
  bool isobscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:   context.read<LoginCubit>().formKey,
      child:  Column(
      children: [
       AppTextFormField(
        controller: context.read<LoginCubit>().emailController,
        hintText: 'Email',
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          return null;
        },
      ),
      SizedBox(height: 16.0),
      AppTextFormField(
        controller: context.read<LoginCubit>().passwordController,
        hintText: 'Password',
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isobscureText = !isobscureText;
            });
          },
          child: Icon(isobscureText
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined),
        ),
        isObscureText: isobscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          return null;
        },
      ),
      ],
    ));
  }
  @override
  void dispose() {
    /* context.read<LoginCubit>().emailController.dispose();
    context.read<LoginCubit>().passwordController.dispose(); */
    super.dispose();
  }
}

