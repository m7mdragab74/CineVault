import 'package:cine_vault/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadHomeDetailsWidget extends StatelessWidget {
  const HeadHomeDetailsWidget({super.key, required this.imagePath, this.onTap});
  final String imagePath;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 310.h,
            width: MediaQuery.sizeOf(context).width,
          ),
          Positioned(
              bottom: 8.h,
              right: 160.w,
              child: Image.asset(
                AppImages.play,
                height: 54.h,
                width: 54.w,
              )),
        ],
      ),
    );
  }
}
