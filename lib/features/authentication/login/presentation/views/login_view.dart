import 'package:cine_vault/config/themes/themes.dart';
import 'package:flutter/material.dart';

import '../widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLinearColor(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LoginBody(),
      ),
    );
  }
}
