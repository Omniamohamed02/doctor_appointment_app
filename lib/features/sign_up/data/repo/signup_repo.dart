import 'package:doctor_appointment_app/core/network/api_service.dart';
import 'package:doctor_appointment_app/features/sign_up/data/models/signup_request_body_model.dart';
import 'package:doctor_appointment_app/features/sign_up/data/models/signup_response_model.dart';

class SignUpRepo {
final ApiService apiService;

SignUpRepo({required this.apiService});

Future <SignupResponseModel> signup(SignupRequestBodyModel signupRequestBodyModel) async{
  try{
    final response = await apiService.signup(signupRequestBodyModel);
    return response;
  }catch(e){
    throw Exception(e.toString());
  }
}


}