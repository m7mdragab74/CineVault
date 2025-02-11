import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
    this.onChangedCheckBox,
    this.onTap,
  });
  final void Function(bool?)? onChangedCheckBox;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Checkbox(
          value: false,
          onChanged: onChangedCheckBox,
          activeColor: AppColors.containerColor,
        ),
        Text('Remember me', style: FontStyles.textStyle12),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Forgot Password?',
            textAlign: TextAlign.right,
            style: FontStyles.textStyle16.copyWith(
              color: AppColors.containerColor,
              fontSize: 15.sp,
            ),
          ),
        ),
      ],
    );
  }
}
