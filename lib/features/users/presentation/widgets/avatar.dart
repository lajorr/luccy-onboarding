import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.r,
      width: 56.r,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: ColorConstants.accentColor,
          width: 3.0,
        ),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      // child: child,
    );
  }
}
