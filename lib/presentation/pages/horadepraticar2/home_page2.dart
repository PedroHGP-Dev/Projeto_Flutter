import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.blue)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.green)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.yellow)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.pink)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}