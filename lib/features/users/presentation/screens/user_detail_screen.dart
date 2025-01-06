import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/users/domain/models/user.dart';
import 'package:luccy_onboarding/features/users/presentation/widgets/user_name_address.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    user.imgUrl,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  UserNameAddress(
                    city: user.address.city,
                    imgUrl: user.imgUrl,
                    name: user.name,
                    street: user.address.street,
                    companyName: user.company.name,
                    suite: user.address.suite,
                    username: user.username,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 18.h,
                          ),
                          child: Text(
                            "User Information",
                            style: TextStyle(fontSize: 16.sp, color: ColorConstants.primaryColor),
                          ),
                        ),
                        Divider(
                          color: ColorConstants.accentColor,
                          indent: 8.w,
                          endIndent: 8.w,
                          height: 4.h,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            children: [
                              InfoTile(
                                iconData: Icons.mail,
                                title: 'Email',
                                value: user.email,
                              ),
                              InfoTile(
                                iconData: Icons.phone,
                                title: 'Phone',
                                value: user.phone,
                              ),
                              InfoTile(
                                iconData: Icons.language,
                                title: 'Website',
                                value: user.website,
                              ),
                              InfoTile(
                                iconData: Icons.apartment,
                                title: 'Company bs',
                                value: user.company.bs,
                              ),
                              InfoTile(
                                iconData: Icons.apartment,
                                title: 'Company Catch Phrase',
                                value: user.company.catchPhrase,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.iconData,
    required this.title,
    required this.value,
  });

  final IconData iconData;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Icon(
            iconData,
            color: ColorConstants.primaryColor,
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16.sp, color: ColorConstants.primaryColor),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
