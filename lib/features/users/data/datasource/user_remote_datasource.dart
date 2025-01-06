import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:luccy_onboarding/core/error/exceptions.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';

sealed class UserRemoteDatasource {
  Future<List<UserResponse>> getUsers();
}

class UserRemoteDatasourceImpl extends UserRemoteDatasource {
  final Dio dio;

  UserRemoteDatasourceImpl({required this.dio});
  @override
  Future<List<UserResponse>> getUsers() async {
    final response = await dio.get<List<dynamic>>('/users');
    final responseData = List<Map<String, dynamic>>.from(response.data ?? []);
    if (responseData.isEmpty) {
      throw ServerException();
    }
    final userData =
        responseData.map((data) => UserResponse.fromJson(data)).toList();
    log(userData.toString());
    return userData;
  }
}
