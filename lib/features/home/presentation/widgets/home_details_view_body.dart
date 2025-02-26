import 'package:cine_vault/core/constants/images.dart';
import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/features/home/presentation/widgets/head_home_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_details_text_widget.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeadHomeDetailsWidget(
          imagePath: AppImages.test1,
          onTap: () {},
        ),
        SizedBox(height: 10.h),
        Text(
          'Money Heist : Part 5',
          style: FontStyles.textStyle18
              .copyWith(fontWeight: FontWeight.bold, fontSize: 20.sp),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 7.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeDetailsTextWidget(
              text: '2021',
            ),
            SizedBox(width: 5.w),
            HomeDetailsTextWidget(
              text: '|',
            ),
            SizedBox(width: 5.w),
            HomeDetailsTextWidget(
              text: 'Action, Crime, Drama',
            ),
            SizedBox(width: 5.w),
            HomeDetailsTextWidget(
              text: '|',
            ),
            SizedBox(width: 5.w),
            HomeDetailsTextWidget(
              text: 'rank: 1',
            ),
          ],
        ),
        SizedBox(height: 5.h),
        HomeDetailsTextWidget(
          text: 'rating: 9.8',
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: FontStyles.textStyle18
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 20.sp),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.h),
              HomeDetailsTextWidget(
                text:
                    'Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a criminal mastermind manipulates the police to carry out his plan. ',
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
