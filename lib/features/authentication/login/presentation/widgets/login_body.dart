import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/core/widgets/custom_app_bottom_widget.dart';
import 'package:cine_vault/core/widgets/custom_form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      children: [
        SizedBox(height: 30.h),
        Center(
          child: Image.asset(
            AppImages.logo,
            width: 163.w,
            height: 163.h,
          ),
        ),
        SizedBox(height: 40.h),
        Text(
          'Login to your account',
          textAlign: TextAlign.left,
          style: FontStyles.textStyle18,
        ),
        SizedBox(height: 20.h),
        CustomFormTextField(
          icon: Icons.email_outlined,
          label: 'Email',
          obscure: false,
          onChange: (data) {},
        ),
        SizedBox(height: 20.h),
        CustomFormTextField(
          icon: Icons.lock_outline,
          label: 'Password',
          obscure: true,
          onChange: (data) {},
        ),
        SizedBox(height: 2.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Checkbox(
              value: false,
              onChanged: (context) {},
              activeColor: AppColors.containerColor,
            ),
            Text('Remember me', style: FontStyles.textStyle12),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                textAlign: TextAlign.right,
                style: FontStyles.textStyle16.copyWith(
                  color: AppColors.containerColor,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        CustomAppBottomWidget(
          label: 'Login',
          onTap: () {},
        ),
        SizedBox(height: 20.h),
        Row(
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
        ),
      ],
    );
  }
}
