import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/ui_demo/presentation/pages/ui_demo_home.dart';
import 'features/ui_demo/presentation/widgets/main_drawer.dart'; // importa tu Drawer

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Demo Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 18),
        ),
      ),
      home: const HomeWithDrawer(), // reemplazamos UiDemoHome por esto
    );
  }
}

class HomeWithDrawer extends StatelessWidget {
  const HomeWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Demo Flutter'),
      ),
      drawer: const MainDrawer(), // tu Drawer con los DrawerItem
      body: const Center(
        child: Text(
          'Contenido principal',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
