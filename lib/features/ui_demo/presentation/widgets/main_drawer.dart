
import 'package:flutter/material.dart';
import 'drawer_item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            child: UserAccountsDrawerHeader(
              accountName: const Text(
                'Estudiante UIDE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text('estudiante@uide.edu.ec'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40),
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF2C3E50), 
              ),
              margin: EdgeInsets.zero,
            ),
          ),

          DrawerItem(
            icon: Icons.info_outline,
            title: 'Acerca de la demo',
            subtitle: 'Ver explicación de la app',
            onTap: () {
              Navigator.of(context).pop();
              showAboutDialog(
                context: context,
                applicationName: 'UI Demo Flutter',
                applicationVersion: '1.0.0',
                children: const [
                  Text(
                    'Ejemplo para practicar widgets básicos de Flutter: '
                    'Scaffold, layouts, recursos, temas y más.',
                  ),
                ],
              );
            },
          ),

          const Divider(height: 1),

          DrawerItem(
            icon: Icons.code,
            title: 'Ver documentación',
            subtitle: 'Abrir ayuda técnica',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Aquí abrirías la ayuda')),
              );
            },
          ),

          const Divider(height: 1),

          DrawerItem(
            icon: Icons.color_lens,
            title: 'Cambiar tema',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tema cambiado (simulado)')),
              );
            },
          ),
        ],
      ),
    );
  }
}