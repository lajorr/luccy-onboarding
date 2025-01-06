import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luccy_onboarding/core/error/failure.dart';

part 'usecase.freezed.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

@freezed
class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;
}
