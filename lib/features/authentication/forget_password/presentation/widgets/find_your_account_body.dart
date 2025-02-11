import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/core/widgets/custom_app_bottom_widget.dart';
import 'package:cine_vault/core/widgets/custom_form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'find_your_account_head_widget.dart';

class FindYourAccountBody extends StatelessWidget {
  const FindYourAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      children: [
        SizedBox(height: 10.h),
        const FindYourAccountHeadWidget(),
        SizedBox(height: 30.h),
        Text(
          'Find Your Account',
          textAlign: TextAlign.left,
          style: FontStyles.textStyle18,
        ),
        SizedBox(height: 10.h),
        Text(
          'Enter your email',
          textAlign: TextAlign.left,
          style: FontStyles.textStyle12.copyWith(fontSize: 14.sp),
        ),
        SizedBox(height: 5.h),
        CustomFormTextField(
          icon: Icons.email_outlined,
          label: 'Email',
          obscure: false,
          onChange: (data) {},
        ),
        SizedBox(height: 20.h),
        Text(
          'You may receive Mobile notifications for security and login purposes',
          textAlign: TextAlign.center,
          style: FontStyles.textStyle12.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 20.h),
        CustomAppBottomWidget(
          label: 'Send',
          onTap: () => context.push(AppRoutes.createdNewPassword),
        ),
      ],
    );
  }
}
