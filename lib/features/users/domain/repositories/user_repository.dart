import 'package:dartz/dartz.dart';
import 'package:luccy_onboarding/core/error/failure.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUsers();
}
