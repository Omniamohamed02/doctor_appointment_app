

import 'package:json_annotation/json_annotation.dart';

part 'login_request_body_model.g.dart';


@JsonSerializable()
class LoginRequestBodyModel {
  final String username;
  final String password;

  LoginRequestBodyModel({
    required this.username,
    required this.password,
  });


  Map<String, dynamic> toJson() => _$LoginRequestBodyModelToJson(this);
}