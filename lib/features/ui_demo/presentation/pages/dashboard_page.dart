import 'package:flutter/material.dart';

import '../widgets/info_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            'Resumen de la Interfaz',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          const Text(
            'Esta pantalla muestra cómo combinar diferentes layouts: '
            'Row, Column, Expanded, ListView y Cards.',
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      InfoCard(
                        title: 'Widgets Stateless',
                        subtitle: 'Representan UI que no cambia internamente.',
                        icon: Icons.view_agenda_outlined,
                        color: Colors.indigo.shade100,
                      ),
                      const SizedBox(height: 8),
                      InfoCard(
                        title: 'Widgets Stateful',
                        subtitle:
                            'Gestionan estado y se redibujan con setState().',
                        icon: Icons.animation_outlined,
                        color: Colors.green.shade100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: const [
                          ListTile(
                            leading: Icon(Icons.list),
                            title: Text('Componentes clave'),
                            subtitle: Text(
                              'Ejemplos de widgets que veremos en esta demo',
                            ),
                          ),
                          Divider(),
                          Expanded(
                            child: _ComponentsList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ComponentsList extends StatelessWidget {
  const _ComponentsList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.text_fields),
          title: Text('Text, TextStyle'),
        ),
        ListTile(
          leading: Icon(Icons.smart_button),
          title: Text('ElevatedButton, IconButton'),
        ),
        ListTile(
          leading: Icon(Icons.view_column),
          title: Text('Row, Column, Expanded'),
        ),
        ListTile(
          leading: Icon(Icons.layers),
          title: Text('Stack y Positioned'),
        ),
        ListTile(
          leading: Icon(Icons.image),
          title: Text('Image.asset, Image.network'),
        ),
        ListTile(
          leading: Icon(Icons.color_lens),
          title: Text('Temas y colores'),
        ),
        ListTile(
          leading: Icon(Icons.image),
          title: Text('Image.asset, Image.network'),
        ),
        ListTile(
          leading: Icon(Icons.color_lens),
          title: Text('Temas y colores'),
        ),
        
      ],
    );
  }
}
