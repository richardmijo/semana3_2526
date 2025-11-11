# semana_3_2526

## Refactor del Drawer con Widget Reutilizable en Flutter

Este proyecto mejora la arquitectura del menú lateral reemplazando varios `ListTile` directos por un widget propio llamado `DrawerItem`, creado en `widgets/drawer_item.dart` y utilizado en `features/main_drawer.dart`, lo que permite un código más limpio, modular y mantenible. El widget fue implementado como `StatelessWidget` y recibe `icon`, `title`, `onTap` y un `subtitle` opcional, logrando flexibilidad y manteniendo la lógica de navegación fuera del componente. Durante el desarrollo se corrigieron problemas de importación y manejo de valores nulos al renderizar el subtítulo. Como mejoras futuras se plantean agregar estados visuales, animaciones, rutas nombradas y pruebas unitarias.
