
import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:doctor_appointment_app/core/helper/secure_storage.dart';
import 'package:doctor_appointment_app/core/network/api_result.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/data/models/signup_request_body_model.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/data/repo/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo signupRepo;

  SignupCubit(this.signupRepo) : super(SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int? selectedGender;

  void signup() async {
    emit(SignupState.loading());
    final response = await signupRepo.signup(SignupRequestBodyModel(
      username: nameController.text,
      email: emailController.text,
      phoneNumber: phoneController.text,
      password: passwordController.text,
      confirmPassword: passwordConfirmationController.text,
      gender: selectedGender,
      
      
    ));
    response.when(
        success: (signupResponseModel) async {
       await saveUserToken(signupResponseModel.userData?.token ?? '');
          emit(SignupState.success(signupResponseModel));
        },
        failure: (error) => emit(SignupState.error(error.toString()))
      );
  }
  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    return super.close();
  }
}

 Future<void> saveUserToken(String token) async {
      
      await SecureStorage.setSecuredString('USER_TOKEN', token);
  }
 
