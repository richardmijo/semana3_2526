import 'package:flutter/material.dart';
import '../../../../widgets/drawer_item.dart';

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
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
          ),

          DrawerItem(
            icon: Icons.info_outline,
            title: 'Acerca de la demo',
            subtitle: 'Ver explicación de la app',
            onTap: () {
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

          //
          DrawerItem(
            icon: Icons.code,
            title: 'Ver documentación',
            subtitle: 'Información adicional',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Aquí podrías abrir una pantalla de ayuda.'),
                ),
              );
            },
          ),

          //
          DrawerItem(
            icon: Icons.home,
            title: 'Inicio',
            subtitle: 'Volver a la pantalla principal',
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
