import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80, height: 80, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.yellow),
                Container(width: 80, height: 80, color: Colors.purple),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80, height: 80, color: Colors.blue),
                Container(width: 80, height: 80, color: Colors.pink),
                Container(width: 80, height: 80, color: Colors.brown),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80, height: 80, color: Colors.green),
                Container(width: 80, height: 80, color: Colors.orange),
                Container(width: 80, height: 80, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}