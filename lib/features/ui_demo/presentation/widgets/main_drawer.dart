import 'package:flutter/material.dart';
import '../widgets/drawer_item.dart';

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

          // 🔹 Código original del docente (no se toca)
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Acerca de la demo'),
            subtitle: const Text('Ver explicación de la app'),
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
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('Ver documentación'),
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

          DrawerItem(
            icon: Icons.star_border,
            title: 'Creado por:',
            subtitle: 'Desarrollado por Mateo Castillo',
            onTap: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('Créditos'),
                  content: const Text(
                    'Practica Semana 3.\n'
                    'Autor: Mateo Castillo\n'
                    'Universidad Internacional del Ecuador - UIDE',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cerrar'),
                    ),
                  ],
                ),
              );
            },
          ),

          DrawerItem(
            icon: Icons.contact_mail_outlined,
            title: 'Mi contacto',
            onTap: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('Contacto'),
                  content: const Text(
                    '¿Tienes dudas o sugerencias?\n'
                    'matcastilloma@uide.edu.ec\n'
                    'github.com/mateocp10',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cerrar'),
                    ),
                  ],
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
