
import '../../../../core/network/api_service.dart';
import '../models/login_request_body_model.dart';
import '../models/login_response_model.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo({required this.apiService});

  Future<LoginResponseModel> login(
    LoginRequestBodyModel loginRequestBodyModel) async {
      try {
      final response = await apiService.login(loginRequestBodyModel);
       return response;
      } catch (e) {
        throw Exception(e.toString());
      }
   
    }
}