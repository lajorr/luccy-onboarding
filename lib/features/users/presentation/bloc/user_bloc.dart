import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luccy_onboarding/core/usecases/usecase.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';
import 'package:luccy_onboarding/features/users/domain/usecases/get_users_usecase.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.getUsersUsecase}) : super(const Initial()) {
    on<GetUsersDataEvent>(_onGetUsersData);
    on<SearchUserEvent>(_onSearchUser);
  }

  final GetUsersUsecase getUsersUsecase;

  List<User> usersList = [];
  FutureOr<void> _onGetUsersData(
      GetUsersDataEvent event, Emitter<UserState> emit) async {
    emit(const Loading());
    final result = await getUsersUsecase.call(const NoParams());
    result.fold((_) => emit(const Failed(message: 'Failed to get users')),
        (users) {
      usersList = users;
      emit(
        Success(users: users),
      );
    });
  }

  FutureOr<void> _onSearchUser(SearchUserEvent event, Emitter<UserState> emit) {
    emit(const Loading());
    final result = usersList.where((user) {
      return user.username.toLowerCase().contains(event.query.toLowerCase());
    }).toList();
    emit(Success(users: result));
  }
}
