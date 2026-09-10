import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'MEU APP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Home'),
            ),
            ListTile(title: const Text('Minha Conta'), onTap: () => {}),
            ListTile(title: const Text('Meus Pedidos'), onTap: () => {}),
          ],
        ),
      ),
      body: Stack(
        children:[
          Container(
            color: Colors.red,
            width: 300,
            height: 300,
          ),
          Container(
            color: Colors.green,
            width: 290,
            height: 290,
          ),
          Container(
            color: Colors.yellow,
            width: 280,
            height: 280,
          ),
        ]
      ),
    );
  }
}
