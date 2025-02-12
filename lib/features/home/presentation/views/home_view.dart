import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return isDarkMode
        ? const CustomLinearColor(
            child: HomeViewBody(),
          )
        : const Scaffold(
            body: HomeViewBody(),
          );
  }
}
