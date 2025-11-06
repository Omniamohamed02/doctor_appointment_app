// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBodyModel _$SignupRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => SignupRequestBodyModel(
  username: json['name'] as String?,
  email: json['email'] as String?,
  phoneNumber: json['phone'] as String?,
  gender: (json['gender'] as num?)?.toInt(),
  password: json['password'] as String?,
  confirmPassword: json['password_confirmation'] as String?,
);

Map<String, dynamic> _$SignupRequestBodyModelToJson(
  SignupRequestBodyModel instance,
) => <String, dynamic>{
  'name': instance.username,
  'email': instance.email,
  'phone': instance.phoneNumber,
  'gender': instance.gender,
  'password': instance.password,
  'password_confirmation': instance.confirmPassword,
};
