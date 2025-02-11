import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/core/widgets/custom_app_bottom_widget.dart';
import 'package:cine_vault/core/widgets/custom_form_text_field.dart';
import 'package:cine_vault/features/authentication/forget_password/presentation/widgets/find_your_account_head_widget.dart';
import 'package:cine_vault/features/authentication/login/presentation/widgets/custom_divider_sign_up_with.dart';
import 'package:cine_vault/features/authentication/login/presentation/widgets/have_account.dart';
import 'package:cine_vault/features/authentication/login/presentation/widgets/sign_up_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      children: [
        SizedBox(height: 10.h),
        const FindYourAccountHeadWidget(),
        SizedBox(height: 20.h),
        Text(
          'Create your account',
          style: FontStyles.textStyle18.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 30.h),
        CustomFormTextField(
          icon: Icons.person_outlined,
          label: 'Name',
          obscure: false,
          onChange: (data) {},
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
          label: 'New Password',
          obscure: true,
          onChange: (data) {},
        ),
        SizedBox(height: 20.h),
        CustomFormTextField(
          icon: Icons.lock_outline,
          label: 'Confirm New Password',
          obscure: true,
          onChange: (data) {},
        ),
        SizedBox(height: 20.h),
        CustomAppBottomWidget(
          label: 'Register',
          onTap: () => context.push(AppRoutes.login),
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
        SizedBox(height: 10.h),
        HaveAccount(
          text: 'Already have an account?',
          label: 'Log In',
          onTap: () {
            context.push(AppRoutes.login);
          },
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
