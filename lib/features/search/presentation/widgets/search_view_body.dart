import 'package:cine_vault/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search',
        style: FontStyles.textStyle18,
      ),
    );
  }
}
