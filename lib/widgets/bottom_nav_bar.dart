import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 16,
      unselectedFontSize: 14,
      iconSize: 28,
      selectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
      unselectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(
          icon: Icon(LucideIcons.userCircle2),
          label: "profile",
        ),
      ],
      currentIndex: 0,
      selectedItemColor: const Color(0xFF3F72AF),
      unselectedItemColor: const Color(0xFF9E9E9E),
      backgroundColor: const Color(0xFFF9F7F7),
    );
  }
}
