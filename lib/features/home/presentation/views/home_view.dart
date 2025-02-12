import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/core/widgets/custom_nav_bar.dart';
import 'package:cine_vault/features/home/presentation/views/watch_list_view.dart';
import 'package:cine_vault/features/home/presentation/widgets/home_view_body.dart';
import 'package:cine_vault/features/profile/presentation/views/profile_view.dart';
import 'package:cine_vault/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return isDarkMode
        ? CustomLinearColor(
            child: Scaffold(
              bottomNavigationBar: CustomNavBar(
                pages: [
                  HomeView(),
                  SearchView(),
                  WatchListView(),
                  ProfileView(),
                ],
                color: Colors.transparent,
                selectedIndex: _selectedIndex,
                onItemSelected: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
              ),
              backgroundColor: Colors.transparent,
              body: HomeViewBody(),
            ),
          )
        : Scaffold(
            bottomNavigationBar: CustomNavBar(
              pages: [
                HomeView(),
                SearchView(),
                WatchListView(),
                ProfileView(),
              ],
              color: Colors.transparent,
              selectedIndex: _selectedIndex,
              onItemSelected: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
            backgroundColor: Colors.transparent,
            body: HomeViewBody(),
          );
  }
}
