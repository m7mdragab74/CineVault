import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/features/onBoarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLinearColor(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: OnboardingBody(),
      ),
    );
  }
}
