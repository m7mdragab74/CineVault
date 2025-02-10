import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/core/constants/colors.dart';
import 'package:cine_vault/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    navigateToHome();
    initScaleAnimation();
  }

  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: ScaleTransition(
            scale: scaleAnimation,
            child: Image.asset(
              AppImages.logo,
              width: 269.w,
              height: 269.h,
            ),
          ),
        ),
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(AppRoutes.onBoarding);
      },
    );
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
  }

  void initScaleAnimation() {
    scaleAnimation =
        Tween<double>(begin: 0.7, end: 1.2).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));
  }
}
