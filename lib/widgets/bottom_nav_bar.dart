import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double selectedFontSize = 10;
    //((screenWidth + screenHeight) * 0.01).clamp(14.0, 18.0);
    final double unselectedFontSize = 10;
     //(selectedFontSize * 0.9).clamp(12.0, 16.0);

    return Container(
      height: 70,
      color: const Color(0xFFF9F7F7),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ), // Increase/decrease this
      child: Center(
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // spacing between items
          children: [
            _buildNavItem(
              context,
              icon: Icons.home,
              label: 'home',
              isSelected: true,
              selectedFontSize: selectedFontSize,
              unselectedFontSize: unselectedFontSize,
            ),
            _buildNavItem(
              context,
              icon: Icons.search,
              label: 'search',
              isSelected: false,
              selectedFontSize: selectedFontSize,
              unselectedFontSize: unselectedFontSize,
            ),
            _buildNavItem(
              context,
              icon: LucideIcons.userCircle2,
              label: 'profile',
              isSelected: false,
              selectedFontSize: selectedFontSize,
              unselectedFontSize: unselectedFontSize,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool isSelected,
    required double selectedFontSize,
    required double unselectedFontSize,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? const Color(0xFF3F72AF) : const Color(0xFF9E9E9E),
          size: 22,
        ),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: isSelected ? selectedFontSize : unselectedFontSize,
            color: isSelected
                ? const Color(0xFF3F72AF)
                : const Color(0xFF9E9E9E),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
