# semana_3_2526

## Refactor del Drawer con Widget Reutilizable en Flutter

Este proyecto implementa una mejora arquitectónica en el Drawer de la aplicación Flutter. El código original utilizaba directamente varios `ListTile` dentro del Drawer, lo cual funcionaba pero hacía el archivo menos mantenible. Para optimizar la estructura, se creó un widget personalizado llamado `DrawerItem`, diseñado para encapsular la lógica y el estilo de los elementos del menú lateral.

## Descripción de los cambios realizados

La modificación principal se realizó dentro del archivo `main_drawer.dart`, en el directorio features, reemplazando los widgets `ListTile` por instancias del nuevo widget `DrawerItem`. Además, se creó el archivo `drawer_item.dart` en la carpeta `widgets/` para definir este nuevo widget. El objetivo fue mejorar la legibilidad del código, facilitar futuras modificaciones y reforzar el concepto de componentes reutilizables dentro de Flutter.

## Diseño del widget propio del Drawer

El widget `DrawerItem` fue construido como un `StatelessWidget` para garantizar su eficiencia y simplicidad, ya que su contenido no cambia dinámicamente. El widget recibe los siguientes parámetros:

- IconData icon — ícono que representa cada opción del menú.
- String title — texto principal del elemento.
- VoidCallback onTap — función que se ejecuta al presionar la opción.
- String? subtitle (opcional) — texto secundario que se muestra solo si es proporcionado.

Esta estructura fue elegida para permitir flexibilidad, de manera que algunas opciones del Drawer puedan incluir subtítulos mientras otras no lo requieren. Además, manejar el callback desde fuera permite mantener la responsabilidad de navegación donde corresponde: el Drawer principal.

## Ventajas de usar un widget propio en lugar de ListTile directo

Encapsular el comportamiento dentro de un widget propio aporta varias ventajas técnicas:

- Mantenimiento simplificado: cualquier cambio visual o funcional se realiza en un solo archivo.
- Código más limpio: se reduce repetición y se mejora la legibilidad del código del Drawer.
- Consistencia visual: todos los elementos del menú comparten el mismo estilo.
- Reutilización: el widget puede emplearse en otros lugares de la app si es necesario.

En resumen, esto sigue buenas prácticas de desarrollo Flutter, favoreciendo modularidad y escalabilidad del código.

## Problemas encontrados y soluciones aplicadas

Durante la implementación surgieron algunos inconvenientes:

- Flutter no reconocía la clase `DrawerItem`: esto ocurrió por no importar correctamente el archivo. La solución fue verificar la ruta real y ajustar el import manualmente.
- Subtítulo opcional causando error: al inicio se intentaba renderizar el subtítulo siempre. Se solucionó evaluando si el valor era nulo antes de renderizarlo (`subtitle != null ? Text(subtitle!) : null`).

Ambos problemas se resolvieron mediante pruebas, lectura de documentación oficial y revisión del flujo de imports.

## Ideas de mejora futura

Para continuar optimizando esta implementación, se consideran las siguientes mejoras:

- Agregar estado visual para indicar el elemento del Drawer activo.
- Implementar animaciones y efectos táctiles para mejorar la experiencia de usuario.
- Integrar rutas nombradas (`Navigator.pushNamed`) para navegación más mantenible.
- Añadir pruebas unitarias para validar el comportamiento del widget.

Estas mejoras aportarían aún más solidez al diseño modular del menú de navegación.

