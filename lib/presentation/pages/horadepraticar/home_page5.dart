import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _telas = [
    const Center(
      child: Text.rich(
        TextSpan(
          text: 'Olá, ',
          style: TextStyle(fontSize: 20, color: Colors.blue),
          children: [
            TextSpan(
              text: 'Mundo!',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
    const Center(
      child: Text('Você está na Tela 2', style: TextStyle(fontSize: 18)),
    ),
    const Center(
      child: Text('Você está na Tela 3', style: TextStyle(fontSize: 18)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCE6F1),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: _telas[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tela 1'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Tela 2'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Tela 3'),
        ],
      ),
    );
  }
}
