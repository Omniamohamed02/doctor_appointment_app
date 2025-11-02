import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  final _formKey = GlobalKey<FormState>();  
  bool isobscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:  Column(
      children: [
       AppTextFormField(
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
}