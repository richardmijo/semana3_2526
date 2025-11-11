import 'package:flutter/material.dart';
import 'drawer_item.dart';

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

          // Ítem 1: Acerca de la demo
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

          // Ítem 2: Ver documentación
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

          const Divider(),

          // Ítem 3: Contacto
          DrawerItem(
            icon: Icons.contact_mail,
            title: 'Contacto',
            subtitle: 'Correo de soporte',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Enviar correo a soporte@uide.edu.ec'),
                ),
              );
            },
          ),

          const Divider(),

          // Ítem 4: Ajustes (nuevo)
          DrawerItem(
            icon: Icons.settings,
            title: 'Ajustes',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Aquí podrías abrir la pantalla de ajustes.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
