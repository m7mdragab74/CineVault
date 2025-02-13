import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/features/home/presentation/widgets/watch_list_view_body.dart';
import 'package:flutter/material.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    Widget scaffold = Scaffold(
      backgroundColor: Colors.transparent,
      body: const WatchListViewBody(),
    );

    return isDarkMode ? CustomLinearColor(child: scaffold) : scaffold;
  }
}
