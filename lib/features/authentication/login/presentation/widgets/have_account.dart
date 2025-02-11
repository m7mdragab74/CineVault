import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: FontStyles.textStyle12,
        ),
        SizedBox(width: 5.w),
        Text(
          '|',
          style: FontStyles.textStyle18
              .copyWith(fontWeight: FontWeight.bold, fontSize: 20.sp),
        ),
        SizedBox(width: 5.w),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Sign up',
            style: FontStyles.textStyle16.copyWith(
              color: AppColors.containerColor,
            ),
          ),
        ),
      ],
    );
  }
}
