Documentación Técnica - Refactor de Drawer (Camila Loarte)

1. Descripción de los Cambios Realizados

El objetivo de esta actividad fue aplicar el principio de reutilización de código y separación de responsabilidades dentro de la estructura de la aplicación Flutter.

Específicamente, se modificó el archivo lib/presentation/widgets/main_drawer.dart. Antes, este archivo contenía la implementación directa de los ítems del menú usando el widget ListTile, lo cual resultaba en código repetitivo y difícil de mantener.

Para corregir esto, se creó un nuevo widget llamado DrawerMenuItem en el archivo lib/presentation/widgets/drawer_menu_item.dart. Este nuevo widget encapsula la lógica de presentación de cada opción del menú, permitiendo que el MainDrawer se centre únicamente en la estructura general (el encabezado y la lista de opciones). El MainDrawer ahora utiliza este DrawerMenuItem para definir sus tres opciones de menú principales.

2. Diseño del Widget Propio (DrawerMenuItem)

El widget DrawerMenuItem es un StatelessWidget diseñado para ser flexible y cumplir con los requisitos típicos de una opción de menú en un Drawer:

Parámetro

Tipo

Requisito

Propósito

icon

IconData

Obligatorio

Define el ícono a la izquierda de la opción.

title

String

Obligatorio

Es el texto principal de la opción del menú.

onTap

DrawerCallback (void Function())

Obligatorio

Es la función de callback que se ejecuta cuando el usuario toca el ítem. Permite inyectar cualquier acción (navegación, diálogo, snackbar, etc.).

subtitle

String?

Opcional

Permite mostrar una breve descripción debajo del título. Al ser opcional (String?), se maneja internamente para mostrarse solo si se provee un valor.

La estructura interna del DrawerMenuItem simplemente delega la renderización a un ListTile, pero gestiona el color del ícono para asegurar la consistencia con el tema principal (Theme.of(context).colorScheme.primary) y realiza el chequeo del subtitle.

3. Ventajas de Usar un Widget Propio

Utilizar DrawerMenuItem en lugar de ListTile directamente ofrece varias ventajas de buenas prácticas en Flutter:

Reutilización y Consistencia: Se garantiza que todas las opciones del menú que utilicen este widget tendrán exactamente el mismo estilo, tamaño y comportamiento (por ejemplo, el color del ícono, la tipografía).

Mantenimiento Centralizado: Si se necesita cambiar el estilo de todos los ítems del Drawer (por ejemplo, cambiar la fuente o añadir padding), solo se modifica el código en un único lugar: el DrawerMenuItem.

Separación de Responsabilidades: El MainDrawer (el contenedor) ya no necesita saber cómo se renderiza cada ítem; solo se preocupa de qué ítems debe mostrar. El DrawerMenuItem se preocupa de cómo se renderiza cada ítem. Esto hace que ambos archivos sean más limpios y fáciles de leer.

4. Problemas Encontrados y Solución

Dificultad: Manejar el Evento onTap: Al inicio, la duda fue cómo pasar la acción (la función que hace el push o muestra el diálogo) desde el MainDrawer (el padre) al DrawerMenuItem (el hijo).

Solución: Se definió un tipo typedef DrawerCallback = void Function(); y se usó como tipo para el parámetro onTap en el constructor del DrawerMenuItem. Esto permite inyectar cualquier función de callback desde el widget padre y ejecutarla limpiamente.

Dificultad: Hacer el Subtítulo Realmente Opcional: Asegurar que el subtitle no cause un error si se omite y que desaparezca si no se usa.

Solución: Se declaró el parámetro como String? subtitle; (nullable) y se incluyó una verificación dentro del método build: subtitle != null ? Text(subtitle!) : null. Si es null, simplemente se asigna null a la propiedad subtitle del ListTile interno, ocultándolo por completo.

5. Ideas de Mejora Futura

Soporte para Navegación con Rutas: En lugar de pasar una función genérica (onTap), se podría modificar el DrawerMenuItem para que acepte una String routeName. Internamente, el widget usaría Navigator.of(context).pushNamed(routeName), lo cual simplificaría aún más el código en MainDrawer al solo tener que especificar la ruta destino.

Gestión de Estado de Selección: Implementar un parámetro booleano (isSelected) que permita al widget cambiar su color de fondo o el color del texto para indicar visualmente qué página está actualmente activa.