import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/core/widgets/custom_app_bottom_widget.dart';
import 'package:cine_vault/core/widgets/custom_form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPasswordBody extends StatelessWidget {
  const CreateNewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      children: [
        Text(
          'Create New Password',
          textAlign: TextAlign.center,
          style: FontStyles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.h),
        Text(
          'The password must include a mix of letters and numbers, with preference for uppercase and lowercase letters, numbers, and special symbols for increased security. It should be at least 8 characters long.',
          style: FontStyles.textStyle12,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.h),
        CustomFormTextField(
          icon: Icons.lock_outline,
          label: 'New Password',
          obscure: false,
          onChange: (data) {},
        ),
        SizedBox(height: 20.h),
        CustomFormTextField(
          icon: Icons.lock_outline,
          label: 'Confirm New Password',
          obscure: false,
          onChange: (data) {},
        ),
        SizedBox(height: 30.h),
        CustomAppBottomWidget(
          label: 'Send',
          onTap: () => context.push(AppRoutes.codeVerification),
        ),
      ],
    );
  }
}
