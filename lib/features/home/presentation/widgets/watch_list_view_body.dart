import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class WatchListViewBody extends StatelessWidget {
  const WatchListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Watch List',
        style: FontStyles.textStyle18,
      ),
    );
  }
}
