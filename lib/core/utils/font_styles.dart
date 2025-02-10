import 'package:flutter/material.dart';
import 'package:cine_vault/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class FontStyles {
  static final textStyle12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.bgColor,
  );
  static final textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static final textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
}
