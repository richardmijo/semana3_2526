import 'package:flutter/material.dart';
import 'drawer_item.dart'; // Import del nuevo widget

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Estudiante UIDE'),
            accountEmail: Text('sechochosi@uide.edu.ec'),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          DrawerItem(
            icon: Icons.info_outline,
            title: 'Acerca de la demo',
            onTap: () {
              Navigator.of(context).pop();
              showAboutDialog(
                context: context,
                applicationName: 'UI Demo Flutter',
                applicationVersion: '2.0.0',
                children: const [
                  Text(
                    'Actividad No 2 (Individual) '
                  ),
                ],
              );
            },
          ),
          const Divider(),
          DrawerItem(
            icon: Icons.code,
            title: 'Ver documentación',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('[ Necesitas ayuda ]'),
                ),
              );
            },
          ),
          const Divider(),
          // Tercer ítem de ejemplo para cumplir con "al menos tres"
          DrawerItem(
            icon: Icons.settings,
            title: 'Configuración',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('[ Pantalla de configuración abierta ]'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}