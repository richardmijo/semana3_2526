### Sebastián Alejandro Chocho Silva - Programación Movil


### Descripción de los cambios realizados
- Modifiqué el archivo `main_drawer.dart`, que define el Drawer principal de la app. Originalmente, usaba `ListTile` directamente para las opciones de menú.

- Creé un widget nuevo llamado `DrawerItem` en `drawer_item.dart`. Reemplacé los `ListTile` por instancias de este widget en el Drawer, y agregué un tercer ítem "Configuración" para tener al menos tres opciones. 


### Diseño del widget propio del Drawer
- El widget `DrawerItem` recibe parámetros obligatorios: `icon` de tipo `IconData`, para el ícono al lado izquierdo, `title` de tipo `String`, para el texto principal de la opción y `onTap` de tipo `VoidCallback`, para la función que se ejecuta al tocarlo.

- Lo estructuré así porque imita las propiedades básicas de un `ListTile` , pero lo hace más fácil de reutilizar. 


### Ventajas de usar un widget propio en lugar de ListTile directo
- **Orden y legibilidad**: El código del Drawer queda más corto y claro, con llamadas simples como `DrawerItem` en lugar de repetir bloques largos de `ListTile`.

- **Mantenimiento fácil**: Si quiero cambiar algo en todos los ítems, lo hago solo en `DrawerItem` y se aplica automáticamente.

- **Consistencia**: Asegura que todos los menús se vean y funcionen igual.

- **Reutilización**: Puedo usarlo en otros drawers o pantallas sin empezar de cero, ahorrando tiempo en proyectos más grandes.


### Problemas encontrados y cómo los solucionaste
- **Problemas**: Solo al recargar automaticamente los cambios, "Resolvibles". 


### Ideas de mejora futura
- Agregar un parámetro `isSelected` para resaltar la opción activa con un color diferente, usando `Theme.of(context)` para adaptarse al tema de la app.

- Convertir el `MainDrawer` en `StatefulWidget` para recordar la selección anterior y agregar navegación real con `Navigator.pushNamed` a pantallas nuevas, en lugar de solo mensajes.

- Incluir soporte para accesibilidad, como widgets `Semantics` para describir los ítems a lectores de pantalla, o trailing icons para notificaciones.

- Para optimizar recursos, conectarlo desde el telefono, esto activando el modo desarrollador y luego depurando USB.