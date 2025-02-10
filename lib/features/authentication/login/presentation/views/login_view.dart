import 'package:cine_vault/config/themes/themes.dart';
import 'package:flutter/material.dart';

import '../widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return isDarkMode
        ? const CustomLinearColor(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: LoginBody(),
            ),
          )
        : const Scaffold(
            body: LoginBody(),
          );
  }
}
