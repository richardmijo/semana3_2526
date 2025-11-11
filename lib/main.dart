import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/ui_demo/presentation/pages/ui_demo_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Demo Flutter 💜',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple, // 💜 Color base morado
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F4FB), // Fondo lila suave
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF6A1B9A), // Morado intenso
          foregroundColor: Colors.white,
          elevation: 3,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4A148C), // Título violeta oscuro
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Color(0xFF5E35B1), // Texto violeta medio
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF8E24AA),
          foregroundColor: Colors.white,
        ),
        dividerColor: Color(0xFFE1BEE7),
        cardTheme: const CardThemeData( // 🔧 Corregido aquí
          color: Color(0xFFF3E5F5),
          shadowColor: Colors.deepPurple,
          elevation: 3,
          margin: EdgeInsets.all(8),
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFF7B1FA2),
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurpleAccent,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF1E1B29),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF4A148C),
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFD1C4E9),
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Color(0xFFEDE7F6)),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const UiDemoHome(),
    );
  }
}