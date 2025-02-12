import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/core/widgets/custom_nav_bar.dart';
import 'package:cine_vault/features/profile/presentation/views/profile_view.dart';
import 'package:cine_vault/features/search/presentation/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/views/home_view.dart';
import '../../../home/presentation/views/watch_list_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  int _selectedIndex = 1;

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
              body: SearchViewBody(),
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
            body: SearchViewBody(),
          );
  }
}
