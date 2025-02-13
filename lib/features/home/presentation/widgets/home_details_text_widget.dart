import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDetailsTextWidget extends StatelessWidget {
  const HomeDetailsTextWidget({
    super.key,
    required this.text,
    this.textAlign = TextAlign.center,
  });
  final String text;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: FontStyles.textStyle12.copyWith(fontSize: 14.sp),
      textAlign: textAlign,
    );
  }
}
