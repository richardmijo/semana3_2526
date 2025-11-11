import 'package:flutter/material.dart';

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
