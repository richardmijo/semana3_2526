import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      useMaterial3: true,
      textTheme: const TextTheme(
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 14),
      ),
    );
  }

  static ThemeData get fixedLightTheme {
    final base = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.light,
      ),
    );

    return base.copyWith(
      // Colores principales
      colorScheme: base.colorScheme.copyWith(
        primary: Colors.red.shade700,
        onPrimary: Colors.white,
        secondary: Colors.amber.shade600,
        onSecondary: Colors.black,
        surface: Colors.grey.shade50,
        onSurface: Colors.grey.shade900,
        error: Colors.red.shade800,
      ),

      // Fondo general
      scaffoldBackgroundColor: Colors.grey.shade50,

      // Texto global
      textTheme: base.textTheme.copyWith(
        headlineLarge: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.5,
        ),
        headlineMedium: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        bodyLarge: const TextStyle(fontSize: 16),
        bodyMedium: const TextStyle(fontSize: 14),
        labelLarge: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
        ),
      ),

      // AppBar
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        foregroundColor: Colors.red.shade800,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.red.shade800,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(color: Colors.red.shade700, size: 22),
      ),

      // Iconos globales
      iconTheme: IconThemeData(color: Colors.red.shade600, size: 22),

      // Botones elevados
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red.shade700,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),

      // Botones de texto
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.red.shade700,
          textStyle: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),

      // Botones delineados
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red.shade700,
          side: BorderSide(color: Colors.red.shade300, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // FloatingActionButton
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // Campos de texto / formularios
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        labelStyle: TextStyle(color: Colors.grey.shade700),
        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 13),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red.shade600, width: 1.8),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red.shade800, width: 1.8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red.shade800, width: 2),
        ),
      ),

      // ListTile
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        iconColor: Colors.red.shade500,
        titleTextStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        subtitleTextStyle: TextStyle(fontSize: 12, color: Colors.grey.shade600),
      ),

      // Chip
      chipTheme: base.chipTheme.copyWith(
        backgroundColor: Colors.red.shade50,
        selectedColor: Colors.red.shade700,
        secondarySelectedColor: Colors.red.shade700,
        labelStyle: TextStyle(
          color: Colors.red.shade800,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        secondaryLabelStyle: const TextStyle(color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.red.shade200),
        ),
      ),

      // BottomNavigationBar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red.shade700,
        unselectedItemColor: Colors.grey.shade500,
        selectedIconTheme: const IconThemeData(size: 24),
        unselectedIconTheme: const IconThemeData(size: 22),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),

      // SnackBar
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.grey.shade900,
        contentTextStyle: const TextStyle(color: Colors.white, fontSize: 14),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Divider
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade300,
        thickness: 1,
        space: 16,
      ),

      // Estilo por defecto de scrollbar (útil para web/desktop)
      scrollbarTheme: ScrollbarThemeData(
        thumbVisibility: WidgetStateProperty.all(true),
        thickness: WidgetStateProperty.all(6),
        radius: const Radius.circular(12),
        thumbColor: WidgetStateProperty.all(Colors.red.shade200),
      ),
    );
  }
}
