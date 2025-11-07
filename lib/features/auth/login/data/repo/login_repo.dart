
import 'package:doctor_appointment_app/core/network/api_result.dart';


import '../../../../../core/network/api_service.dart';
import '../models/login_request_body_model.dart';
import '../models/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseModel>> login(
    LoginRequestBodyModel loginRequestBodyModel) async {
      try {
      final response = await _apiService.login(loginRequestBodyModel);
       return ApiResult.success(response);
      } catch (e) {
        return ApiResult.failure(e.toString());
      }
   
    }
}