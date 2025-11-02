import 'package:doctor_appointment_app/core/themes/font_styles_manager.dart';
import 'package:flutter/material.dart';

import '../themes/colors_manager.dart';

class AppTextFormField extends StatelessWidget {
   final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.isObscureText,
    this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.backgroundColor,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator(value),
      controller: controller,
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? FontStylesManager.font14Medium.copyWith(
        color: ColorsManager.DarkBlueColor,
      ),
      decoration:  InputDecoration(
         isDense: true,
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ),
        suffixIcon: suffixIcon,
        
        focusedBorder:focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: ColorsManager.primaryBlueColor,
            width: 1.0,
          ),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: ColorsManager.textFormFeildBackgroundColor,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
         focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),),
        hintText: hintText,
        hintStyle: hintStyle ?? FontStylesManager.font14Regular.copyWith(
          color: ColorsManager.lightGreyColor,
        ),
        fillColor:backgroundColor?? ColorsManager.textFormFieldBorderColor,
        filled: true,
      ),
    
    );
  }
}