import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.r,
      width: 56.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(
          color: ColorConstants.accentColor,
          width: 3,
        ),
      ),
      child: child,
    );
  }
}
