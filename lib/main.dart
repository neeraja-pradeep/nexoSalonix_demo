import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salonix/screens/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: const Color(0xFFF9F7F7),
      primaryColor: const Color(0xFF3F72AF),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF3F72AF),
        background: const Color(0xFFF9F7F7),
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w700,
          color: Color(0xFF112D4E),
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF112D4E),
        ),
        bodyMedium: TextStyle(
          fontSize: 15,
          color: Color(0xFF112D4E),
        ),
        labelSmall: TextStyle(fontSize: 10),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const SplashScreen(),
    );
  }
}

