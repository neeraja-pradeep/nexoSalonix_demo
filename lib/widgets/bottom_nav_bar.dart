import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../consts.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final double navSpacing = media.size.width * 0.27;   // amount of horizontal gap
    final double barHeight = media.size.height * 0.09;
    final EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: media.size.width * 0.06);

    final baseFontSize =
        Theme.of(context).textTheme.labelSmall?.fontSize ?? 10;
    final double selectedFontSize =
        baseFontSize * media.textScaleFactor;
    final double unselectedFontSize =
        baseFontSize * media.textScaleFactor;

    return SafeArea(
      top: false,
      child: Container(
        height: barHeight,
        color: const Color(0xFFF9F7F7),
        padding: padding,
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: _buildNavItem(
                  context,
                icon: Icons.home,
                label: 'home',
                isSelected: true,
                selectedFontSize: selectedFontSize,
                unselectedFontSize: unselectedFontSize,
              ),
            ),
            SizedBox(width: navSpacing), 
            Expanded(
              child: _buildNavItem(
                context,
                icon: Icons.search,
                label: 'search',
                isSelected: false,
                selectedFontSize: selectedFontSize,
                unselectedFontSize: unselectedFontSize,
              ),
            ),
             SizedBox(width: navSpacing),
            Expanded(
              child: _buildNavItem(
                context,
                icon: LucideIcons.userCircle2,
                label: 'profile',
                isSelected: false,
                selectedFontSize: selectedFontSize,
                unselectedFontSize: unselectedFontSize,
              ),
            ),
          ],
        ),
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
          size: Responsive.iconSize(context),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize:
                    isSelected ? selectedFontSize : unselectedFontSize,
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

