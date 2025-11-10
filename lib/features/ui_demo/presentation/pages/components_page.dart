import 'package:flutter/material.dart';

import '../../domain/entities/component_item.dart';
import '../pages/component_detail_page.dart';
import '../widgets/component_demos.dart';

class ComponentsPage extends StatelessWidget {
  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final components = [
      ComponentItem(
        name: 'Text & TextStyle',
        description: 'Control de tipografía, tamaños, colores.',
        demo: const TextDemo(),
      ),
      ComponentItem(
        name: 'Buttons',
        description: 'ElevatedButton, OutlinedButton, IconButton, FAB.',
        demo: const ButtonsDemo(),
      ),
      ComponentItem(
        name: 'Inputs',
        description: 'TextField, validación sencilla y Focus.',
        demo: const InputsDemo(),
      ),
      ComponentItem(
        name: 'Layouts',
        description: 'Row, Column, Expanded, Wrap.',
        demo: const LayoutDemo(),
      ),
      ComponentItem(
        name: 'Stack & Positioned',
        description: 'Superposición de widgets en capas.',
        demo: const StackDemo(),
      ),
      ComponentItem(
        name: 'ListView & GridView',
        description: 'Listas y rejillas desplazables.',
        demo: const ListGridDemo(),
      ),
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: components.length,
      itemBuilder: (context, index) {
        final item = components[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ComponentDetailPage(item: item),
              ),
            );
          },
          child: Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.widgets_outlined,
                    size: 32,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Text(
                      item.description,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ComponentDetailPage(item: item),
                          ),
                        );
                      },
                      child: const Text('Ver demo'),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
