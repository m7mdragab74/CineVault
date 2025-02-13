import 'dart:math';

import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:cine_vault/features/home/presentation/widgets/movie_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  final PageController _pageController = PageController(viewportFraction: 0.65);
  double _currentPage = 0.0;
  final List<String> images = [
    AppImages.test1,
    AppImages.test1,
    AppImages.test1,
  ];
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        controller: _pageController,
        itemBuilder: (context, index) {
          double scale = max(0.85, 1 - (_currentPage - index).abs() * 0.2);
          double opacity = max(0.5, 1 - (_currentPage - index).abs() * 0.5);
          return Transform.scale(
            scale: scale,
            child: Opacity(
              opacity: opacity,
              child: MovieCardWidget(
                onTap: () {
                  context.push(AppRoutes.homeDetails);
                },
                imagePath: images[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
