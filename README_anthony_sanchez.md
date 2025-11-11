## Descripción de los cambios realizados

Se realizó los cambios dentro del archivo main_drawer.dart, reemplazando los widgets ListTile por instancias del nuevo widget DrawerItem. Además, se creó el archivo drawer_item.dart en la carpeta widgets/ para definir este nuevo widget. El objetivo fue mejorar la legibilidad del código, facilitar futuras modificaciones y reforzar el concepto de componentes reutilizables dentro de Flutter.

## Diseño del widget propio del Drawer

El widget DrawerItem fue construido de una forma sencilla para garantizar su eficiencia y simplicidad, ya que su contenido no cambia dinámicamente. El widget recibe los siguientes parámetros:

- IconData icon — ícono que representa cada opción del menú.
- String title — texto principal del elemento.
- VoidCallback onTap — función que se ejecuta al presionar la opción.
- String? subtitle (opcional) — texto secundario que se muestra solo si es proporcionado.


## Ventajas de usar un widget propio en lugar de ListTile directo

- Mantenimiento optimizado: todas las modificaciones estéticas o de comportamiento se ejecutan desde una única ubicación.
- Código más organizado: se minimiza la duplicación y se incrementa la comprensibilidad del código del Drawer.
- Uniformidad visual: la totalidad de los elementos del menú mantienen un estilo idéntico.
- Reaprovechamiento: el componente puede utilizarse en diferentes secciones de la aplicación cuando sea requerido.


## Problemas encontrados y soluciones aplicadas

Durante la implementación surgieron algunos inconvenientes:

- Flutter no reconocía la clase DrawerItem: esto ocurrió por no importar correctamente el archivo. La solución fue verificar la ruta real y ajustar el import manualmente.
- Subtítulo opcional causando error: al inicio se intentaba renderizar el subtítulo siempre. Se solucionó evaluando si el valor era nulo antes de renderizarlo (subtitle != null ? Text(subtitle!) : null).

Ambos problemas se resolvieron mediante pruebas, lectura de documentación oficial y revisión del flujo de imports.

## Ideas de mejora futura

- Incorporar señalización visual del ítem actualmente seleccionado en el Drawer.
- Desarrollar transiciones animadas y feedback táctil para optimizar la interacción del usuario.
- Implementar testing unitario para garantizar el correcto funcionamiento del componente.
