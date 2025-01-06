import 'package:dartz/dartz.dart';
import 'package:luccy_onboarding/core/error/failure.dart';
import 'package:luccy_onboarding/core/usecases/usecase.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';
import 'package:luccy_onboarding/features/users/domain/repositories/user_repository.dart';

class GetUsersUsecase implements UseCase<List<User>, NoParams> {
  final UserRepository userRepository;

  GetUsersUsecase({required this.userRepository});
  @override
  Future<Either<Failure, List<User>>> call(NoParams params) async {
    return await userRepository.getUsers();
  }
}
