import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/features/profile/presentation/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    Widget scaffold = Scaffold(
      backgroundColor: Colors.transparent,
      body: const ProfileViewBody(),
    );

    return isDarkMode ? CustomLinearColor(child: scaffold) : scaffold;
  }
}
