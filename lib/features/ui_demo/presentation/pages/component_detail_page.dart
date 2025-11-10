import 'package:flutter/material.dart';

import '../../domain/entities/component_item.dart';

class ComponentDetailPage extends StatelessWidget {
  final ComponentItem item;

  const ComponentDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(item.description),
            const SizedBox(height: 12),
            const Divider(),
            const Text(
              'Vista previa',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Center(child: item.demo),
            ),
          ],
        ),
      ),
    );
  }
}
