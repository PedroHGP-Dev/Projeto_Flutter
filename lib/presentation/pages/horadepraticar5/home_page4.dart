import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8EEF5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF42A5F5),
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xFF42A5F5),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: const Color(0xFF2D2D2D),
                content: const Row(
                  children: [
                    Icon(Icons.info, color: Colors.red, size: 20),
                    SizedBox(width: 8),
                    Text(
                      'Aqui está um SnackBar Personalizado!',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text(
            'SnackBar Personalizado',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
      ),
    );
  }
}