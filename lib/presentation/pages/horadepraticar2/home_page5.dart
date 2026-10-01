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
          Expanded(
            child: Container(
              color: const Color(0xFF32B3D6),
              child: const Center(
                child: Text(
                  'Expandido',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            color: const Color(0xFF4285F4),
            child: const Center(
              child: Text(
                '100',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
          Container(
            height: 200,
            color: const Color(0xFF4B51C6),
            child: const Center(
              child: Text(
                '200',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}