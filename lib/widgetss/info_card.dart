import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: const [
            Icon(Icons.person, color: Colors.blueAccent),
            SizedBox(width: 10),
            Text(
              'Developed by Fuentes',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
