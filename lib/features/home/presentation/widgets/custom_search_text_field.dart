import 'package:cine_vault/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextField(
        cursorColor: AppColors.bgColor,
        cursorErrorColor: AppColors.bgColor,
        onChanged: (data) {},
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          labelText: 'Search',
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
        autocorrect: false,
        enableSuggestions: true,
      ),
    );
  }
}
