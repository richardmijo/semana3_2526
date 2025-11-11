# Refactor del Drawer — Lander González

En esta entrega refactoricé el menú lateral (MainDrawer) creando el widget reusable `DrawerItem` en `lib/widgets/drawer_item.dart`. Reemplacé los `ListTile` del Drawer por `DrawerItem` en tres opciones: “Acerca de la demo”, “Ver documentación” e “Inicio”. El nuevo widget encapsula la UI y cierra el Drawer antes de ejecutar la acción.

**Diseño del widget.** `DrawerItem` es un `StatelessWidget` con parámetros obligatorios `icon`, `title`, `onTap` y opcional `subtitle`. Elegí esta estructura para centralizar el estilo (ícono, tipografía, chevron) y el comportamiento (cerrar Drawer + callback), evitando duplicación.

**Ventajas.** Al encapsular:
- mejoro mantenimiento (cambios de estilo/UX en un único lugar),
- aseguro consistencia visual,
- reduzco código repetido y errores.

**Problemas y soluciones.**
- *Import del widget:* fallaba el `package:`; lo resolví usando import **relativo** desde `main_drawer.dart`: `import '../../../../widgets/drawer_item.dart';`.
- *Cierre del Drawer antes de la acción:* algunas rutas quedaban detrás; lo resolví llamando `Navigator.of(context).pop()` dentro del widget y luego `onTap()`.

**Ideas futuras.** Estado de selección del ítem activo, theming (dark/brand), tests de widget para validar `onTap`, y mejoras de accesibilidad (Semantics).
