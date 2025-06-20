import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: const Color(0x803F72AF),
              blurRadius: 16,
              spreadRadius: 1,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const TextField(
          style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(Icons.search, size: 26, color: Color(0xFF3F72AF)),
            hintText: "Search...",
            hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 16),
          ),
        ),
      ),
    );
  }
}
