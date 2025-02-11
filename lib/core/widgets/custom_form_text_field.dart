import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    required this.label,
    this.onChange,
    required this.obscure,
    required this.icon,
  });
  final String label;
  final void Function(String)? onChange;
  final bool obscure;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
      },
      scrollPadding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 16.0.w),
      style: FontStyles.textStyle16,
      obscureText: obscure,
      cursorColor: AppColors.bgColor,
      cursorErrorColor: AppColors.bgColor,
      onChanged: onChange,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0.r),
          borderSide: const BorderSide(color: AppColors.bgColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0.r),
          borderSide: const BorderSide(color: AppColors.bgColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0.r),
          borderSide: const BorderSide(color: AppColors.bgColor),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autocorrect: false,
      enableSuggestions: true,
    );
  }
}
