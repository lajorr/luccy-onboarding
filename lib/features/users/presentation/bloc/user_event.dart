part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUsersData() = GetUsersDataEvent;
  const factory UserEvent.searchUser(String query) = SearchUserEvent;
}