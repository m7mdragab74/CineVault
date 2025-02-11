import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/features/authentication/forget_password/presentation/widgets/find_your_account_body.dart';
import 'package:flutter/material.dart';

class FindYourAccountView extends StatelessWidget {
  const FindYourAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLinearColor(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FindYourAccountBody(),
      ),
    );
  }
}
