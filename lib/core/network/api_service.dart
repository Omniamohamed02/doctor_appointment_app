import 'package:doctor_appointment_app/core/network/network_constant.dart';
import 'package:doctor_appointment_app/features/login/data/models/login_request_body_model.dart';
import 'package:doctor_appointment_app/features/login/data/models/login_response_model.dart';
import 'package:doctor_appointment_app/features/sign_up/data/models/signup_request_body_model.dart';
import 'package:doctor_appointment_app/features/sign_up/data/models/signup_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: NetworkConstants.baseUrl)
abstract class ApiService {
 factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(NetworkConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestBodyModel loginRequestBodyModel);

  @POST(NetworkConstants.signup)
  Future<SignupResponseModel> signup(@Body() SignupRequestBodyModel signupRequestBodyModel);
}

