import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBottomWidget extends StatelessWidget {
  const CustomAppBottomWidget({
    super.key,
    this.onTap,
    required this.label,
  });
  final void Function()? onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: AppColors.containerColor,
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: FontStyles.textStyle18.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
