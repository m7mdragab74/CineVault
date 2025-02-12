import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile',
        style: FontStyles.textStyle18,
      ),
    );
  }
}
