import 'package:cine_vault/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadHomeWidget extends StatelessWidget {
  const HeadHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 370.h,
      child: Image.asset(
        AppImages.homeHead,
        fit: BoxFit.cover,
      ),
    );
  }
}
