import 'package:flutter/material.dart';

class MenuDrawerItem extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String? subtitulo;              // opcional
  final VoidCallback accion;            // callback al tocar

  const MenuDrawerItem({
    super.key,
    required this.icono,
    required this.titulo,
    this.subtitulo,
    required this.accion,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icono),
      title: Text(titulo),
      subtitle: subtitulo != null ? Text(subtitulo!) : null,
      onTap: accion,
    );
  }
}
