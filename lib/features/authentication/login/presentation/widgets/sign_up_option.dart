import 'package:cine_vault/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions({
    super.key,
    this.onTap,
    required this.image,
  });
  final void Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53.h,
        width: 58.w,
        decoration: BoxDecoration(
          color: const Color(0xFF2B2B2B),
          borderRadius: BorderRadius.circular(35.r),
          border: Border.all(color: AppColors.bgColor, width: 1.w),
        ),
        child: Center(
          child: SvgPicture.asset(
            image,
            height: 24.h,
            width: 24.w,
          ),
        ),
      ),
    );
  }
}
