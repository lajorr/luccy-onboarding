import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luccy_onboarding/features/users/presentation/bloc/user_bloc.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<UserBloc>().add(const GetUsersDataEvent());
      }),
    );
  }
}
