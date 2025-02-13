import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({
    super.key,
    required this.imagePath,
    this.onTap,
  });
  final String imagePath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Stack(
                children: [
                  Image.asset(imagePath, fit: BoxFit.cover),
                ],
              ),
            ),
            Positioned(
              top: 8.h,
              right: 8.w,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border_outlined,
                  size: 30.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
