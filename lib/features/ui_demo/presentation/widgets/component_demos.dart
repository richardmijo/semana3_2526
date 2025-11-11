import 'dart:convert';
import 'package:flutter/material.dart';

/// Demos individuales de componentes
class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Título principal',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Este es un texto con estilo personalizado, con color, tamaño y peso definidos.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.deepPurpleAccent),
        ),
      ],
    );
  }
}

class ButtonsDemo extends StatelessWidget {
  const ButtonsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
          onPressed: () {},
          child: const Text('ElevatedButton'),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.deepPurple,
            side: const BorderSide(color: Colors.deepPurple),
          ),
          onPressed: () {},
          child: const Text('OutlinedButton'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepPurpleAccent,
          ),
          onPressed: () {},
          child: const Text('TextButton'),
        ),
        IconButton(
          onPressed: () {},
          color: Colors.deepPurple,
          icon: const Icon(Icons.favorite),
        ),
      ],
    );
  }
}

class InputsDemo extends StatefulWidget {
  const InputsDemo({super.key});

  @override
  State<InputsDemo> createState() => _InputsDemoState();
}

class _InputsDemoState extends State<InputsDemo> {
  final TextEditingController _controller = TextEditingController();
  String _value = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Escribe tu nombre',
            labelStyle: TextStyle(color: Colors.deepPurple),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
            ),
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _value = _controller.text;
            });
          },
          child: const Text('Aceptar'),
        ),
        const SizedBox(height: 8),
        Text(
          _value.isEmpty ? 'Sin valor' : 'Hola, $_value 💜',
          style: const TextStyle(color: Colors.deepPurpleAccent),
        ),
      ],
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Row + Expanded + Wrap',
            style: TextStyle(color: Colors.deepPurple)),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: 50,
                color: Colors.purple.shade100,
                child: const Center(child: Text('Expanded 1')),
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.purple.shade200,
                child: const Center(child: Text('Expanded 2')),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 4,
          children: List.generate(
            6,
            (index) => Chip(
              label: Text('Chip $index'),
              backgroundColor: Colors.purple.shade100,
            ),
          ),
        ),
      ],
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.purple.shade100,
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 80,
            height: 80,
            color: Colors.purple.shade300,
          ),
        ),
        const Positioned(
          bottom: 10,
          right: 10,
          child: Icon(
            Icons.star,
            size: 40,
            color: Colors.amber,
          ),
        ),
        const Text('Stack con Positioned',
            style: TextStyle(color: Colors.deepPurple)),
      ],
    );
  }
}

class ListGridDemo extends StatelessWidget {
  const ListGridDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('ListView horizontal + GridView',
            style: TextStyle(color: Colors.deepPurple)),
        const SizedBox(height: 8),
        SizedBox(
          height: 60,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => Container(
              width: 60,
              alignment: Alignment.center,
              color: Colors.purple[100 * ((index % 8) + 1)],
              child: Text('L$index'),
            ),
            separatorBuilder: (_, __) => const SizedBox(width: 4),
            itemCount: 10,
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
            itemCount: 9,
            itemBuilder: (_, index) => Container(
              alignment: Alignment.center,
              color: Colors.purple[100 * ((index % 8) + 1)],
              child: Text('💜 $index'),
            ),
          ),
        ),
      ],
    );
  }
}

/// JSON de ejemplo para usar en ResourcesPage.
const String resourcesJson = '''
[
  {"name": "icon_home", "type": "PNG"},
  {"name": "banner_login", "type": "JPG"},
  {"name": "logo_uide", "type": "SVG"}
]
''';

List<dynamic> parseResources() => jsonDecode(resourcesJson);