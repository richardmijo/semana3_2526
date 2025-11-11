import 'package:flutter/material.dart';
// 1. Importar el nuevo widget
import 'drawer_menu_item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  // Función de ejemplo para el tercer item
  void _showMessage(BuildContext context) {
    Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('¡Opción de Ajustes seleccionada!'),
      ),
    );
  }

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
          
          // *************** ÍTEM 1: Usando DrawerMenuItem ***************
          DrawerMenuItem(
            icon: Icons.info_outline,
            title: 'Acerca de la demo',
            // El subtítulo es Opcional, lo enviamos aquí
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
          
          // *************** ÍTEM 2: Usando DrawerMenuItem ***************
          DrawerMenuItem(
            icon: Icons.code,
            title: 'Ver documentación',
            // Aquí NO enviamos el subtítulo para mostrar el caso opcional
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Aquí podrías abrir una pantalla de ayuda.'),
                ),
              );
            },
          ),
          
          // *************** ÍTEM 3: Usando DrawerMenuItem ***************
          DrawerMenuItem(
            icon: Icons.settings,
            title: 'Ajustes',
            subtitle: 'Configuración general',
            onTap: () => _showMessage(context), // Usamos la función de ejemplo
          ),
        ],
      ),
    );
  }
}