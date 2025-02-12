import 'package:cine_vault/config/themes/themes.dart';
import 'package:cine_vault/core/widgets/custom_nav_bar.dart';
import 'package:cine_vault/features/home/presentation/views/home_view.dart';
import 'package:cine_vault/features/home/presentation/views/watch_list_view.dart';
import 'package:cine_vault/features/profile/presentation/widgets/profile_view_body.dart';
import 'package:cine_vault/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int _selectedIndex = 3;

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
              body: ProfileViewBody(),
            ),
          )
        : const Scaffold(
            backgroundColor: Colors.transparent,
            body: ProfileViewBody(),
          );
  }
}
