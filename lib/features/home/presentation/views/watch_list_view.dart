import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/core/widgets/custom_nav_bar.dart';
import 'package:cine_vault/features/home/presentation/widgets/watch_list_view_body.dart';
import 'package:cine_vault/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../../../search/presentation/views/search_view.dart';
import 'home_view.dart';

class WatchListView extends StatefulWidget {
  const WatchListView({super.key});

  @override
  State<WatchListView> createState() => _WatchListViewState();
}

class _WatchListViewState extends State<WatchListView> {
  int _selectedIndex = 2;

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
              body: WatchListViewBody(),
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
            body: WatchListViewBody(),
          );
  }
}
