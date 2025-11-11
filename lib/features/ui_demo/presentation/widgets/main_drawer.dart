import 'package:flutter/material.dart';
import '/widgetss/drawer_item.dart';
import '/widgetss/info_card.dart'; // 👈 Importa tu InfoCard

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Estudiante UIDE'),
            accountEmail: Text('estudiante@uide.edu.ec'),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),

          // Primer ítem con subtítulo
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

          const Divider(),

          // Segundo ítem sin subtítulo
          DrawerItem(
            icon: Icons.code,
            title: 'Ver documentación',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Aquí podrías abrir una pantalla de ayuda.'),
                ),
              );
            },
          ),

          // Tercer ítem adicional
          DrawerItem(
            icon: Icons.settings,
            title: 'Configuración',
            subtitle: 'Preferencias y ajustes',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Pantalla de configuración en desarrollo.'),
                ),
              );
            },
          ),
          const InfoCard(),
        ],
      ),
    );
  }
}
