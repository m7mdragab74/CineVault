import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/core/widgets/custom_app_bottom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'text_field_pin.dart';

class CodeVerificationBody extends StatelessWidget {
  const CodeVerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      children: [
        SizedBox(height: 10.h),
        Text(
          'Code Verification',
          style: FontStyles.textStyle18.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Image.asset(
          AppImages.codeVerification,
          height: 285.h,
          width: 285.w,
        ),
        Text(
          'Enter your code',
          style: FontStyles.textStyle18,
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 10.h),
        TextFieldPin(
          codeLength: 4,
          autoFocus: false,
          margin: 12.h,
          onChange: (String value) {},
          defaultBoxSize: 40.h,
        ),
        SizedBox(height: 10.h),
        CustomAppBottomWidget(
          label: 'Send',
          onTap: () => context.push(AppRoutes.login),
        ),
        SizedBox(height: 10.h),
        Text(
          'You didn’t receive the code ?',
          style: FontStyles.textStyle16
              .copyWith(fontSize: 14.sp, color: AppColors.containerColor),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
