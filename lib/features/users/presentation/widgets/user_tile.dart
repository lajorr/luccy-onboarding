import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';
import 'package:luccy_onboarding/features/users/presentation/screens/user_detail_screen.dart';
import 'package:luccy_onboarding/features/users/presentation/widgets/avatar.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return UserDetailScreen(
            user: user,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Avatar(
              imageUrl: user.imgUrl,
            ),
            SizedBox(
              width: 12.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.username,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.primaryColor,
                  ),
                ),
                UserInfoTile(
                  iconData: Icons.mail,
                  info: user.email,
                ),
                UserInfoTile(
                  iconData: Icons.call,
                  info: user.phone,
                ),
              ],
            ),
          ],
        ),
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
