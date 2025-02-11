import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/features/authentication/register/presentation/widgets/register_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLinearColor(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: RegisterBody(),
      ),
    );
  }
}
