# Implementación del Drawer

Proyecto Flutter para practicar widgets y refactor del Drawer.

## MainDrawer y DrawerItem

Se refactorizó el `MainDrawer` usando un widget propio llamado `DrawerItem` para reemplazar los `ListTile` directos. Esto permite:

- Crear ítems reutilizables con icono, título, `onTap` y subtítulo opcional
- Mantener el código más limpio y organizado
- Garantizar consistencia en el diseño y comportamiento del Drawer

## Ítems del Drawer

Actualmente el Drawer tiene 4 ítems usando `DrawerItem`:

1. Acerca de la demo
2. Ver documentación
3. Contacto
4. Ajustes

Cada ítem mantiene su acción original, como mostrar diálogo o SnackBar.

## Aprendizaje

Con este ejercicio aprendí a:

- Crear widgets reutilizables
- Mejorar la estructura del código
- Resolver problemas como parámetros opcionales y acciones de los ítems
