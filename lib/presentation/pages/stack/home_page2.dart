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
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.black,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.blue,
          ),
          Container(
            width: 37,
            height: 37,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
