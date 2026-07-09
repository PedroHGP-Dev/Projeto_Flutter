import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 63, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 63, 243),
        title: const Text(
          'MEU APP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.account_circle_rounded,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              ),
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              ),
            onPressed: (){},
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Olá, mundo!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
