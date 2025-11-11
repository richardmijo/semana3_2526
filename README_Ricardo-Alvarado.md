# README – Implementación del Drawer
**Autor:** Ricardo Alvarado  
**Actividad:** 3 – Individual  

## Descripción de los cambios realizados
Se modificó el Drawer de la aplicación, reemplazando los `ListTile` directos por un **widget propio llamado `DrawerItemWidget`**. Esto permite tener ítems reutilizables y mejorar la estructura del código. El Drawer ahora cuenta con tres opciones mínimas:  
1. Acerca de la Demo  
2. Ver documentación  
3. Configuración  

## Diseño del widget `DrawerItemWidget`
El widget creado es un `StatelessWidget` que recibe los siguientes parámetros:  
- **icono:** `IconData` que representa visualmente la opción.  
- **titulo:** `String` que indica el texto principal del ítem.  
- **subtitulo:** `String?` opcional para mostrar información secundaria.  
- **onTap:** `VoidCallback` que define la acción al tocar el ítem.  

Esta estructura permite crear ítems consistentes y fáciles de modificar o agregar en el futuro.

## Ventajas de usar un widget propio
- Reutilización de código.  
- Mayor consistencia visual entre ítems del Drawer.  
- Facilita el mantenimiento y futuras modificaciones.  
- Permite agregar o quitar ítems sin duplicar lógica.

## Problemas encontrados y soluciones
- Inicialmente se intentó pasar `Text` directamente como parámetro, lo que generaba errores. Se solucionó usando `String` y construyendo los `Text` dentro del widget.  
- Al probar `onTap`, algunos ítems no ejecutaban la acción; se solucionó revisando la documentación de `ListTile` y probando con `Navigator.of(context).pop()` seguido de la acción deseada.

## Ideas de mejora futura
- Permitir iconos personalizados con imágenes.  
- Agregar indicadores visuales, como contadores de notificaciones.  
- Mejorar el diseño visual con colores y tipografía adaptativa.  
