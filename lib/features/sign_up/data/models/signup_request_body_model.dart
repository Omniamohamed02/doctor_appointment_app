import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body_model.g.dart';

@JsonSerializable()
class SignupRequestBodyModel {
  @JsonKey(name: 'name')
  final String? username;
  final String ?email;
  @JsonKey(name: 'phone')
  final int ?phoneNumber;
  final int ?gender;
  final String ? password;
  @JsonKey(name: 'password_confirmation')
  final String ? confirmPassword;

  SignupRequestBodyModel({
    this.username,
    this.email,
    this.phoneNumber,
    this.gender,
    this.password,
    this.confirmPassword,
  });

  Map<String ,dynamic> toJson() => _$SignupRequestBodyModelToJson(this);

}