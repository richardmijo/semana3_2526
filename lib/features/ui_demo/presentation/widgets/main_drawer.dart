import 'package:flutter/material.dart';
import 'package:semana_3_2526/features/ui_demo/presentation/widgets/menu_drawer_item.dart';

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

          MenuDrawerItem(
            icono: Icons.person,
            titulo: 'Información de usuario',
            subtitulo: 'Ver información del estudiante',
            accion: () {
              Navigator.of(context).pop();
              showAboutDialog(
                context: context,
                applicationName: 'Mateo Merchán',
              );
            },
          ),

          MenuDrawerItem(
            icono: Icons.info_outline,
            titulo: 'Acerca de la demo',
            subtitulo: 'Ver explicación de la app',
            accion: () {
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

          MenuDrawerItem(
            icono: Icons.code,
            titulo: 'Ver documentación',
            accion: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Aquí podrías abrir una pantalla de ayuda.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
