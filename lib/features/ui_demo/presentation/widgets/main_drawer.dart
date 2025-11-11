import 'package:flutter/material.dart';
import '../widgets/drawer_item_widget.dart';

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
          DrawerItemWidget(
            icono: Icons.info_outline,
            titulo: 'Acerca de la Demo',
            subtitulo: 'Ver explicacion de la app',
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

          DrawerItemWidget(
            icono: Icons.code,
            titulo: 'Ver documentacion',
            onTap: () {
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

// actividad
