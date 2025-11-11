# README Estudiante - Christian Salinas

## Descripción de los cambios realizados
Refactoricé completamente el `MainDrawer` del proyecto base creando un **widget reutilizable llamado `DrawerItem`** ubicado en:  
`lib/features/ui_demo/presentation/widgets/drawer_item.dart`

Luego reemplacé todos los `ListTile` directos dentro de `main_drawer.dart` por mi nuevo widget.  
**Se usa el widget propio en 4 opciones diferentes** (más de las 3 mínimas pedidas).

## Diseño del widget propio DrawerItem
```dart
DrawerItem({
  required IconData icon,
  required String title,
  String? subtitle,
  required VoidCallback onTap,
})