# semana_3_2526

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



# Proyecto Flutter – Main Drawer Personalizado   JUAN ESTEBAN FUENTES

## Descripción
Este proyecto implementa un Drawer personalizado en Flutter, con varios ítems interactivos y un widget adicional de información personal (InfoCard). El objetivo principal fue practicar en interfaces en Flutter utilizando widgets personalizados, navegación, diálogos y componentes reutilizables.

---

## Componentes principales

### main_drawer.dart
Define la estructura del menú lateral de la aplicación.  
Incluye:
- UserAccountsDrawerHeader: muestra los datos del usuario.  
- DrawerItem: un widget personalizado para los ítems del menú (cada uno con icono, título y acción).  
- InfoCard: un nuevo widget agregado al final del Drawer, que muestra la autoría del proyecto.  

**Ítems disponibles en el Drawer:**
1. Acerca de la demo  Muestra un `AboutDialog` con información general de la app.  
2. Ver documentación → Muestra un `SnackBar` simulando una futura sección de ayuda.  
3. Configuración → Muestra un `SnackBar` indicando que la pantalla está en desarrollo.  
4. InfoCard → Tarjeta informativa con el texto Developed by Fuentes.

---

### drawer_item.dart
Un widget reutilizable que representa cada ítem del Drawer.  
Permite definir:
- Icono  
- Título  
- Subtítulo (opcional)  
- Acción `onTap`

### info_card.dart
Widget sencillo que muestra información sobre el autor.  
Ejemplo de salida visual:
