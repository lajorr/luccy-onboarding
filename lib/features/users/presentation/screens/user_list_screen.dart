import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/users/presentation/bloc/user_bloc.dart';
import 'package:luccy_onboarding/features/users/presentation/widgets/appbar.dart';
import 'package:luccy_onboarding/features/users/presentation/widgets/user_tile.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  void initState() {
    super.initState();

    context.read<UserBloc>().add(const GetUsersDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyAppbar(),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is Loading) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: const Center(child: CircularProgressIndicator()),
                  );
                } else if (state is Failed) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Center(
                      child: Text(
                        state.message,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  );
                } else if (state is Success) {
                  final users = state.users;
                  
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: users.length,
                      itemBuilder: (context, index) => UserTile(
                        email: users[index].email,
                        phone: users[index].phone,
                        username: users[index].username,
                        imageUrl: users[index].imgUrl,
                      ),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
