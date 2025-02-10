import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/features/onBoarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return isDarkMode
        ? const CustomLinearColor(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: OnboardingBody(),
            ),
          )
        : const Scaffold(
            body: OnboardingBody(),
          );
  }
}
