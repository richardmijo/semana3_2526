Descripción de los cambios

Modifiqué la estructura del Drawer principal de la aplicación para hacerlo más modular y legible. Creé un nuevo widget llamado DrawerItem dentro de la carpeta widgets/, que encapsula el comportamiento de cada opción del menú lateral. El MainDrawer ahora utiliza este widget para definir sus elementos.

Diseño del widget propio

El widget DrawerItem es de tipo StatelessWidget y recibe los siguientes parámetros:

icon: (obligatorio) icono representativo del ítem.

title: (obligatorio) texto principal del ítem.

onTap: (obligatorio) función o evento que se ejecuta al presionar el ítem.

subtitle: (opcional) texto secundario que se muestra debajo del título.

Esta estructura permite personalizar fácilmente cada elemento del Drawer sin repetir código.

Ventajas del widget propio

Crear un widget propio mejora la organización y el mantenimiento del código, ya que evita duplicar estructuras de ListTile.
Además, permite mantener un diseño uniforme en todas las opciones del menú y facilita futuras modificaciones (por ejemplo, cambiar color, estilo o comportamiento desde un solo lugar).

Problemas encontrados

Tuve un error inicial con la importación del widget porque el archivo drawer_item.dart no estaba dentro de la carpeta correcta. Lo solucioné revisando la ruta en el import.
También tuve un problema al pasar el parámetro subtitle cuando era nulo, lo resolví usando el operador condicional subtitle != null ? Text(subtitle!) : null.

Ideas de mejora futura

Agregar un indicador visual del ítem seleccionado (por ejemplo, con color de fondo).

Integrar animaciones al abrir el Drawer o al tocar una opción.

Hacer que los ítems soporten íconos personalizados o imágenes de usuario.