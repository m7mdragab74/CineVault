import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Details',
        style: FontStyles.textStyle18,
      ),
    );
  }
}
