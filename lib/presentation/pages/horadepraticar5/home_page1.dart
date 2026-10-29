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
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'Este é meu ',
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: 'App',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE53935),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Usuário Adicionado com Sucesso!!!'),
            ),
          );
        },
        child: const Text(
          'Adicionar Usuário',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}