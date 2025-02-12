import 'package:cine_vault/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar(
      {super.key,
      required this.selectedIndex,
      required this.onItemSelected,
      required this.color,
      required this.pages});

  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final Color color;
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(flex: 1),
          _buildBottomNavItem(
            context,
            0,
            Icons.home_outlined,
            'Home',
          ),
          const Spacer(flex: 2),
          _buildBottomNavItem(
            context,
            1,
            Icons.search,
            'Search',
          ),
          const Spacer(flex: 2),
          _buildBottomNavItem(
            context,
            2,
            Icons.bookmark_border_outlined,
            'Watch List',
          ),
          const Spacer(flex: 2),
          _buildBottomNavItem(
            context,
            3,
            Icons.person_outlined,
            'Profile',
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(
      BuildContext context, int index, IconData icon, String label) {
    return InkWell(
      onTap: () {
        onItemSelected(index);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pages[index]),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selectedIndex == index ? Colors.white : AppColors.bgColor,
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}
