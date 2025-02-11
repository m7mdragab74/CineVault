import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FindYourAccountHeadWidget extends StatelessWidget {
  const FindYourAccountHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24.sp,
            color: AppColors.containerColor,
          ),
        ),
        SizedBox(width: 50.w),
        Image.asset(
          AppImages.logo,
          width: 163.w,
          height: 132.h,
        )
      ],
    );
  }
}
