import 'package:doctor_appointment_app/core/network/api_result.dart';
import 'package:doctor_appointment_app/core/network/api_service.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/data/models/signup_request_body_model.dart';
import 'package:doctor_appointment_app/features/auth/sign_up/data/models/signup_response_model.dart';

class SignupRepo {
final ApiService apiService;

  SignupRepo(this.apiService);

Future <ApiResult<SignupResponseModel>> signup(SignupRequestBodyModel signupRequestBodyModel) async{
  try {
    final response = await apiService.signup(signupRequestBodyModel);
    return ApiResult.success(response);
  } catch (e) {
    return ApiResult.failure(e.toString());
  }
}}