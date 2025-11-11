import 'package:flutter/material.dart';

// Definición de la función de callback para el evento onTap
typedef DrawerCallback = void Function();

/// Widget reutilizable para representar un ítem del Drawer.
class DrawerMenuItem extends StatelessWidget {
  // Parámetros obligatorios
  final IconData icon;
  final String title;
  final DrawerCallback onTap;

  // Parámetro opcional
  final String? subtitle;

  const DrawerMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle, // Opcional, puede ser null
  });

  @override
  Widget build(BuildContext context) {
    // Usamos ListTile internamente, pero con los parámetros definidos
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(title),
      // Solo mostramos el subtítulo si no es null
      subtitle: subtitle != null ? Text(subtitle!) : null, 
      onTap: () {
        // Ejecutamos la función de callback provista
        onTap();
      },
    );
  }
}