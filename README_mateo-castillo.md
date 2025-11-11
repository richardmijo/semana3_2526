# Mi Drawer – Mateo Castillo

## Descripción general
En esta práctica realicé un refactor del Drawer principal del proyecto base proporcionado por el docente.  
El objetivo fue crear un widget propio y reutilizable que permitiera mantener el código más ordenado y modular, sin alterar la estructura original del proyecto.

Para cumplir con esto, mantuve el contenido del Drawer tal como venía en el código del docente (los ListTile originales) y añadí mis propios DrawerItem personalizados al final del menú, demostrando la aplicación del concepto de widgets reutilizables en Flutter.


## Cambios realizados
* Creé un nuevo archivo en la carpeta widgets llamado drawer_item.dart.  
   Este archivo contiene un widget StatelessWidget llamado DrawerItem`.
* En el MainDrawer, mantuve los ListTile del docente intactos y añadí dos nuevos DrawerItem:
   - Creador Por: muestra un cuadro de dialogo con mi nombre y los creditos de la practica.  
   - Mi contacto: abre un cuadro de diálogo con mis datos simulados de contactos (correo, GitHub).

## Diseño del widget propio
El widget DrawerItem recibe los siguientes parámetros:
- icon → ícono principal.
- title → texto principal.
- subtitle → texto secundario (opcional).
- onTap → función que se ejecuta al tocar el ítem.

Este diseño me permitió reutilizar el componente fácilmente para distintos ítems del Drawer, aplicando buenas prácticas de desarrollo modular.


## Ventajas de usar un widget propio
- Reutilización: puedo emplear el mismo diseño en otros menús o pantallas.  
- Mantenimiento: los cambios visuales o funcionales se realizan desde un solo archivo.  
- Organización: el código del Drawer queda más limpio y legible.  
- Escalabilidad: permite agregar más opciones de menú sin repetir estructura.

---

## Problemas encontrados y soluciones
Durante el desarrollo tuve algunos inconvenientes:
- Me olvidaba importar drawer_item.dart en el archivo del Drawer, lo que me generó un error de tipo “undefined class”. Se resolvió agregando import '../widgets/drawer_item.dart;`.
- A veces los cambios no se reflejaban inmediatamente; lo solucioné ejecutando flutter clean y flutter run nuevamente.


## Ideas de mejora futura
- Agregar un efecto visual al seleccionar un DrawerItem.   
- Incorporar soporte para temas claros y oscuros.  
- Añadir íconos personalizados o animaciones en la apertura del Drawer.


## Aprendizaje personal
Con esta práctica comprendí la importancia de los widgets personalizados para mantener un código limpio y profesional en Flutter.  
Además, me permitió aplicar el flujo completo con Git (branch, commit, push) y aprender a solucionar errores de compilación en proyectos reales.

