
import 'package:doctor_appointment_app/core/network/api_result.dart';
import 'package:doctor_appointment_app/features/login/data/models/login_request_body_model.dart';
import 'package:doctor_appointment_app/features/login/data/repo/login_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/secure_storage.dart';
import 'login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(
      LoginRequestBodyModel(
        email: emailController.text,
        password: passwordController.text,
      ),
     );
    response.when(
      success: (loginResponseModel)  async{
        await saveUserToken(loginResponseModel.userData?.token ?? '');
        emit(LoginState.success(loginResponseModel));
      },
      failure: (error) => emit(LoginState.error(error.toString())),
    );

  
}
 @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
 Future<void> saveUserToken(String token) async {
      
      await SecureStorage.setSecuredString('USER_TOKEN', token);
  }
 