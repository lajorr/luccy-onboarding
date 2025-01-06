import 'package:dartz/dartz.dart';
import 'package:luccy_onboarding/core/error/failure.dart';
import 'package:luccy_onboarding/features/users/data/datasource/user_remote_datasource.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';
import 'package:luccy_onboarding/features/users/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource userRemoteDatasource;

  UserRepositoryImpl({required this.userRemoteDatasource});
  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    try {
      final users = await userRemoteDatasource.getUsers();
      return Right(users);
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
