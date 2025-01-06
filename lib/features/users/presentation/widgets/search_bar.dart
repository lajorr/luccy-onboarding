import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/users/presentation/bloc/user_bloc.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key, required this.media});
  final Size media;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      width: media.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ]),
      child: TextField(
        onChanged: (value) {
          context.read<UserBloc>().add(SearchUserEvent(value.trim()));
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.zero,
          prefixIcon: const Icon(Icons.search),
          hintText: "Search User",
          hintStyle: TextStyle(color: ColorConstants.hintTextColor),
        ),
      ),
    );
  }
}
