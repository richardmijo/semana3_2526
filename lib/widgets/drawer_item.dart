import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final String? subtitle;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: subtitle == null ? null : Text(subtitle!),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        // Cierra el Drawer
        Navigator.of(context).pop();
        // Ejecuta el callback en el siguiente frame (evita que se “pierda” el push)
        WidgetsBinding.instance.addPostFrameCallback((_) => onTap());
        // Alternativas: Future.microtask(onTap) o Future.delayed(Duration.zero, onTap)
      },
    );
  }
}
