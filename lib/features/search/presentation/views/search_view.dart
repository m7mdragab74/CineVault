import 'package:cine_vault/config/themes/themes.dart';

import 'package:cine_vault/features/search/presentation/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    Widget scaffold = Scaffold(
      backgroundColor: Colors.transparent,
      body: const SearchViewBody(),
    );

    return isDarkMode ? CustomLinearColor(child: scaffold) : scaffold;
  }
}
