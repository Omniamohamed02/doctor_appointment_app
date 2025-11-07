import 'package:doctor_appointment_app/core/helper/app_regex.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/ui/widgets/gender_dropdown_feild.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/ui/widgets/password_vaildation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupTextFormFeilds extends StatefulWidget {
  const SignupTextFormFeilds({super.key});

  @override
  State<SignupTextFormFeilds> createState() => _SignupTextFormFeildsState();
}

class _SignupTextFormFeildsState extends State<SignupTextFormFeilds> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<SignupCubit>().nameController,
            hintText: ' Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          AppTextFormField(
              keyboardType: TextInputType.emailAddress,
            controller: context.read<SignupCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          AppTextFormField(
            keyboardType: TextInputType.phone,
            controller: context.read<SignupCubit>().phoneController,
            hintText: 'Phone Number',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              if (value.length < 11) {
                return 'phone number must be at least 11 digits';
              }
              if (!AppRegex.isPhoneNumberValid(value)) {
                return 'Phone must start with 010, 011, 012, or 015';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          GenderDropdownFeild(),
          const SizedBox(height: 20),
          AppTextFormField(
            isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            controller: context.read<SignupCubit>().passwordController,
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          AppTextFormField(
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            controller: context
                .read<SignupCubit>()
                .passwordConfirmationController,
            hintText: 'Confirm Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return 'Password do not match';
              }
              return null;
            },
          ),
          SizedBox(height: 20.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w),
            child: PasswordValidation(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.removeListener(() {});
    super.dispose();
  }
}
