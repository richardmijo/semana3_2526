import 'package:flutter/material.dart';
import '../../../../widgets/drawer_item.dart';
import '../pages/resources_page.dart';
import '../pages/theme_preview_page.dart'; // <-- nuevo import

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF006E5F), Color(0xFF00A389)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            accountName: Text('Estudiante UIDE'),
            accountEmail: Text('estudiante@uide.edu.ec'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Color(0xFF006E5F)),
            ),
          ),

          // 1) Acerca de la demo
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

          // 2) Temas y Colores (reemplaza "Ver documentación")
          DrawerItem(
            icon: Icons.palette_outlined,
            title: 'Temas y Colores',
            subtitle: 'Vista previa del diseño',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ThemePreviewPage()),
              );
            },
          ),

          // 3) Galería de recursos
          DrawerItem(
            icon: Icons.photo_library_outlined,
            title: 'Galería de recursos',
            subtitle: 'Ver imágenes y estilos',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ResourcesPage()),
              );
            },
          ),

          // 4) Inicio
          DrawerItem(
            icon: Icons.home_outlined,
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
