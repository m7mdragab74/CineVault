import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:cine_vault/features/home/presentation/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_search_text_field.dart';
import 'home_head_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HeadHomeWidget(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                const CustomSearchTextField(),
                SizedBox(height: 20.h),
                Text(
                  'Top Rated',
                  style: FontStyles.textStyle18,
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomPageView(),
        ),
      ],
    );
  }
}
