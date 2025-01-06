import 'dart:developer';

import 'package:luccy_onboarding/core/error/exceptions.dart';
import 'package:luccy_onboarding/dio_config/dio_client.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';

sealed class UserRemoteDatasource {
  Future<List<User>> getUsers();
}

class UserRemoteDatasourceImpl extends UserRemoteDatasource {
  @override
  Future<List<User>> getUsers() async {
    final response = await dio.get<List<dynamic>>('/users');
    final responseData = List<Map<String, dynamic>>.from(response.data ?? []);
    if (responseData.isEmpty) {
      throw ServerException();
    }
    final userData = responseData.map((data) => User.fromJson(data)).toList();
    log(userData.toString());
    return userData;
  }
}
