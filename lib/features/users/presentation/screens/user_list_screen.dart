import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/users/presentation/widgets/appbar.dart';
import 'package:luccy_onboarding/features/users/presentation/widgets/circular_container.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bgColor,
      body: Column(
        children: [
          const MyAppbar(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const CircularContainer(
                  child: Placeholder(),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UserName",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.primaryColor,
                      ),
                    ),
                    const UserInfoTile(
                      iconData: Icons.mail,
                      info: "Emial",
                    ),
                    const UserInfoTile(
                      iconData: Icons.call,
                      info: "Phonee",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    required this.iconData,
    required this.info,
  });

  final IconData iconData;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: ColorConstants.accentColor,
          size: 20.sp,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          info,
        ),
      ],
    );
  }
}
