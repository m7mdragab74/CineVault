import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/core/widgets/custom_app_bottom_widget.dart';
import 'package:cine_vault/core/widgets/custom_form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'custom_divider_sign_up_with.dart';
import 'forget_password_widget.dart';
import 'have_account.dart';
import 'sign_up_option.dart';

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
        ForgetPasswordWidget(
          onTap: () {
            context.push(AppRoutes.findYourAccount);
          },
          onChangedCheckBox: (data) {},
        ),
        SizedBox(height: 20.h),
        CustomAppBottomWidget(
          label: 'Login',
          onTap: () {
            context.push(AppRoutes.home);
          },
        ),
        SizedBox(height: 20.h),
        const CustomDividerSignUpWith(),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignUpOptions(
              image: AppImages.apple,
              onTap: () {},
            ),
            SizedBox(width: 20.w),
            SignUpOptions(
              image: AppImages.google,
              onTap: () {},
            ),
            SizedBox(width: 20.w),
            SignUpOptions(
              image: AppImages.facebook,
              onTap: () {},
            ),
          ],
        ),
        SizedBox(height: 20.h),
        HaveAccount(
          onTap: () {
            context.push(AppRoutes.register);
          },
        ),
      ],
    );
  }
}
