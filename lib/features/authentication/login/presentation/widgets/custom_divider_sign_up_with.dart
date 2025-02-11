import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDividerSignUpWith extends StatelessWidget {
  const CustomDividerSignUpWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.containerColor,
            thickness: 1.w,
            indent: 40.w,
            endIndent: 4.w,
          ),
        ),
        Text(
          'Or Sign up with',
          style: FontStyles.textStyle16.copyWith(
            color: AppColors.containerColor,
            fontSize: 14.sp,
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.containerColor,
            thickness: 1.w,
            indent: 4.w,
            endIndent: 40.w,
          ),
        ),
      ],
    );
  }
}
