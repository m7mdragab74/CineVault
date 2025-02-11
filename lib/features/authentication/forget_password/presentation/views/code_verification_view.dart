import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/features/authentication/forget_password/presentation/widgets/code_verification_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CodeVerificationView extends StatelessWidget {
  const CodeVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLinearColor(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 24.sp,
              color: AppColors.containerColor,
            ),
            onPressed: () => context.pop(),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: const CodeVerificationBody(),
      ),
    );
  }
}
