import 'package:flutter/material.dart';
import 'package:gogu_market/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    final TextTheme textTheme = TextTheme();
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          brightness: Brightness.light,
          primary: const Color.fromRGBO(95, 69, 92, 1.0),
          secondary: const Color(0xFFFFD400),
          background: Colors.white,
        ),
        textTheme: textTheme.copyWith(
          bodySmall: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          bodyMedium: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          bodyLarge: const TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500),
          titleSmall: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          titleMedium: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          titleLarge: const TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
          labelSmall: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          labelMedium: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          labelLarge: const TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      home: const StartScreen(),
    );
  }
}
