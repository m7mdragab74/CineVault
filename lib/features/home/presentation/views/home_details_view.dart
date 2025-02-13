import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/core/widgets/custom_nav_bar.dart';
import 'package:cine_vault/features/home/presentation/widgets/home_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailsView extends StatefulWidget {
  const HomeDetailsView({super.key});

  @override
  State<HomeDetailsView> createState() => _HomeDetailsViewState();
}

class _HomeDetailsViewState extends State<HomeDetailsView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    Widget scaffold = Scaffold(
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          context.pop(context);
        },
        color: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: const HomeDetailsViewBody(),
    );

    return isDarkMode ? CustomLinearColor(child: scaffold) : scaffold;
  }
}
