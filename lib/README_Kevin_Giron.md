README Técnico – Kevin

Descripción de los cambios realizados

En esta actividad modifiqué la aplicación para incorporar un Drawer funcional en la pantalla principal (UiDemoHome). Creé un widget personalizado llamado DrawerItem para representar los elementos del menú lateral de manera más organizada y reutilizable.

El MainDrawer contiene un encabezado con información del usuario (UserAccountsDrawerHeader) y tres elementos principales:

1. “Acerca de la demo” con subtítulo, que muestra un diálogo informativo.

2. “Ver documentación”, que despliega un SnackBar como placeholder para contenido de ayuda.

3. “Contacto”, que despliega un SnackBar con el correo del usuario.

Además, ajusté UiDemoHome para incluir MainDrawer en el Scaffold mediante el parámetro drawer, asegurando que al abrir el menú lateral se muestren correctamente los tres elementos.

Diseño del widget propio del Drawer

El widget DrawerItem fue diseñado como un StatelessWidget para simplificar su uso y permitir la reutilización. Recibe los siguientes parámetros:

1. icon (IconData): el ícono que aparecerá a la izquierda del texto, para identificar visualmente la acción.

2. title (String): texto principal que describe la acción del ítem.

3. subtitle (String?, opcional): texto secundario que brinda información adicional si se requiere.

4. onTap (VoidCallback): función que se ejecuta al tocar el item.

Decidí estructurarlo de esta manera porque cada DrawerItem comparte la misma estructura visual y comportamiento general. Al parametrizarlo, puedo crear fácilmente múltiples elementos con iconos, títulos y acciones distintas sin repetir código.

Ventajas de usar un widget propio en lugar de ListTile directo

Usar un widget personalizado ofrece varias ventajas:

1. Reutilización: puedo crear tantos DrawerItem como necesite sin duplicar lógica ni estilo.

2. Mantenimiento: cualquier cambio de estilo o comportamiento se aplica a todos los elementos desde un solo lugar.

3. Consistencia visual: todos los elementos del Drawer mantienen la misma apariencia, colores y tipografía.

4. Orden en el código: el MainDrawer se mantiene limpio y fácil de leer, ya que los elementos son instancias del widget y no código repetitivo de ListTile.

Problemas encontrados y cómo los solucionaste

1. Error de importación: al principio Flutter no encontraba drawer_item.dart, lo que generaba errores de “método no definido” para DrawerItem. Lo solucioné verificando la ruta correcta del archivo y usando un import relativo o absoluto correcto según la estructura de carpetas.

2. Drawer no visible: inicialmente no se mostraban los elementos en la app. Descubrí que el Scaffold de UiDemoHome no tenía asignado drawer: MainDrawer(). Agregando esta línea y asegurando que el AppBar permitiera abrir el Drawer, los elementos aparecieron correctamente.

3. Visibilidad de subtítulos y colores: para asegurar que los subtítulos fueran legibles, agregué estilos de color específicos (Colors.black para el título y Colors.grey para el subtítulo) y un color verde para los íconos.

Ideas de mejora futura

1. Agregar navegación real: que cada DrawerItem lleve a una página diferente dentro de la app, en lugar de mostrar solo SnackBars o diálogos.

2. Animaciones al abrir/cerrar el Drawer para mejorar la experiencia de usuario.

3. Iconos y colores dinámicos según el tema de la app, usando el ThemeData.

4. Soporte para más elementos y secciones dentro del Drawer, como categorías o accesos rápidos.