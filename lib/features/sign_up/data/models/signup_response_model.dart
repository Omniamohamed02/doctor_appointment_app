import 'package:json_annotation/json_annotation.dart';
part 'signup_response_model.g.dart';
@JsonSerializable()

class SignupResponseModel {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool ?status;
  final int ?code;

  SignupResponseModel({ this.message,  this.userData,  this.status,  this.code});

   factory SignupResponseModel.fromJson(Map<String,dynamic> json) => _$SignupResponseModelFromJson(json);
  
  }

  @JsonSerializable()
  class UserData {
    final String? token;
    final String? name;
    UserData({ this.token,  this.name});
    factory UserData.fromJson(Map<String,dynamic>json)=> _$UserDataFromJson(json);
  }
