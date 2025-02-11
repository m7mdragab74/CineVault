import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/core/widgets/custom_app_bottom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Center(
            child: Image.asset(
              AppImages.logo,
              width: 269.w,
              height: 269.h,
            ),
          ),
          SizedBox(height: 32.h),
          Text(
            'Enjoy our unique application to watch exclusive movies and series',
            textAlign: TextAlign.center,
            style: FontStyles.textStyle16.copyWith(
              color: AppColors.bgColor,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          CustomAppBottomWidget(
            label: 'Continue',
            onTap: () => context.push(AppRoutes.login),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
