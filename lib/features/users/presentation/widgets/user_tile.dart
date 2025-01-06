import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/users/presentation/widgets/avatar.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.username,
    required this.email,
    required this.phone,
    required this.imageUrl,
  });
  final String username;
  final String email;
  final String phone;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Avatar(
            imageUrl: imageUrl,
          ),
          SizedBox(
            width: 12.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.primaryColor,
                ),
              ),
              UserInfoTile(
                iconData: Icons.mail,
                info: email,
              ),
              UserInfoTile(
                iconData: Icons.call,
                info: phone,
              ),
            ],
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
