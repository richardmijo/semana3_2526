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
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          MenuDrawerItem(
            icono: Icons.info_outline, 
            titulo: const Text('Acerca de la demo'), 
            subtitulo: const Text('Ver explicación de la app'), 
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
            }
          ),
          const Divider(),

          MenuDrawerItem(
            icono: Icons.code,
            titulo: const Text('Ver documentación'),
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
// actividad
class MenuDrawerItem extends StatelessWidget{
  final IconData icono;
  final Text titulo;
  Text? subtitulo;
  final GestureTapCallback accion;

  // Constructor
  MenuDrawerItem({
    required this.icono,
    required this.titulo,
    this.subtitulo,
    required this.accion
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Icon(icono),
            title: titulo,
            subtitle: subtitulo,
            onTap: accion
          );
  }

}