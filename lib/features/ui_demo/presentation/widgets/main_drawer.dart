import 'package:flutter/material.dart';

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

          // Ítem con subtítulo
          DrawerItemWidget(
            icono: Icons.info_outline,
            titulo: 'Acerca de la Demo',
            subtitulo: 'Ver explicación de la app',
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

          // Ítem sin subtítulo
          DrawerItemWidget(
            icono: Icons.code,
            titulo: 'Ver documentación',
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

          // Tercer ítem
          DrawerItemWidget(
            icono: Icons.settings,
            titulo: 'Configuración',
            subtitulo: 'Ajustes de la aplicación',
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Aquí iría la pantalla de configuración.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Actividad
class DrawerItemWidget extends StatelessWidget {
  final IconData icono; // Icono del item
  final String titulo; // Texto principal
  final String? subtitulo; // Texto secundario opcional
  final VoidCallback onTap; // Acción al tocar el item

  const DrawerItemWidget({
    super.key,
    required this.icono,
    required this.titulo,
    required this.onTap,
    this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icono),
      title: Text(titulo),
      subtitle: subtitulo != null ? Text(subtitulo!) : null,
      onTap: onTap,
    );
  }
}
