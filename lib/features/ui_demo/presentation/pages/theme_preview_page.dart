import 'package:flutter/material.dart';

class ThemePreviewPage extends StatelessWidget {
  const ThemePreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Temas y Colores')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Vista previa de la paleta actual:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _ColorBox('Primary', colors.primary, colors.onPrimary),
                _ColorBox('Secondary', colors.secondary, colors.onSecondary),
                _ColorBox('Tertiary', colors.tertiary, colors.onTertiary),
                _ColorBox('Error', colors.error, colors.onError),
                _ColorBox('Surface', colors.surface, colors.onSurface),
                _ColorBox('Background', colors.background, colors.onBackground),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Estos colores provienen del esquema definido con ColorScheme.fromSeed '
              'en main.dart, lo que garantiza consistencia visual en toda la app.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorBox extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;

  const _ColorBox(this.label, this.color, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4),
        ],
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
