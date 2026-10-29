import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFE53935),
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?q=80&w=300&auto=format&fit=crop',
                    width: 80,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Husky Siberiano',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'O Husky Siberiano é uma raça de cão de porte médio conhecida por sua resistência, energia e beleza cativante. Originário da Sibéria, ele possui uma pelagem densa que o protege em climas frios e olhos penetrantes, muitas vezes de cores diferentes.',
                        style: TextStyle(fontSize: 11, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.info, color: Colors.blue, size: 24),
                Icon(Icons.lightbulb, color: Colors.amber, size: 24),
                Icon(Icons.help, color: Colors.green, size: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}