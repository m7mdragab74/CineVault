import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/core/widgets/custom_nav_bar.dart';
import 'package:cine_vault/features/home/presentation/widgets/home_view_body.dart';
import 'package:cine_vault/features/profile/presentation/widgets/profile_view_body.dart';
import 'package:cine_vault/features/search/presentation/widgets/search_view_body.dart';
import 'package:cine_vault/features/home/presentation/widgets/watch_list_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeViewBody(),
    SearchViewBody(),
    WatchListViewBody(),
    ProfileViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    Widget scaffold = Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        color: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
    );

    return isDarkMode ? CustomLinearColor(child: scaffold) : scaffold;
  }
}
