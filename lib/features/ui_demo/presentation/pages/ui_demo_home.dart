import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import 'dashboard_page.dart';
import 'components_page.dart';
import 'resources_page.dart';

class UiDemoHome extends StatefulWidget {
  const UiDemoHome({super.key});

  @override
  State<UiDemoHome> createState() => _UiDemoHomeState();
}

class _UiDemoHomeState extends State<UiDemoHome> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    DashboardPage(),
    ComponentsPage(),
    ResourcesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String get _title {
    switch (_selectedIndex) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Componentes UI';
      case 2:
        return 'Recursos y Estilos';
      default:
        return 'UI Demo';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('FAB presionado')),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: 'Componentes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_special),
            label: 'Recursos',
          ),
        ],
      ),
    );
  }
}
