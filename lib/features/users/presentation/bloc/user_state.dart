part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = Initial;
  const factory UserState.loading() = Loading;
  const factory UserState.success({required List<User> users}) = Success;
  const factory UserState.failed({required String message}) = Failed;
}
