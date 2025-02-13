import 'package:cine_vault/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.color,
  });

  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
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
          _buildBottomNavItem(context, 0, Icons.home_outlined, 'Home'),
          const Spacer(flex: 2),
          _buildBottomNavItem(context, 1, Icons.search, 'Search'),
          const Spacer(flex: 2),
          _buildBottomNavItem(
              context, 2, Icons.bookmark_border_outlined, 'Watch List'),
          const Spacer(flex: 2),
          _buildBottomNavItem(context, 3, Icons.person_outlined, 'Profile'),
          const Spacer(flex: 1),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(
      BuildContext context, int index, IconData icon, String label) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onItemSelected(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : AppColors.bgColor,
            size: 24.sp,
          ),
          SizedBox(height: 4.h), // Better spacing
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: isSelected ? Colors.white : AppColors.bgColor,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
