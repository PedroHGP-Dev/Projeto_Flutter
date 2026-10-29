import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> paises = const [
    'Estados Unidos',
    'China',
    'Brasil',
    'Argentina',
    'Espanha',
    'Japão',
    'Alemanha',
    'Afeganistão',
    'Bulgária',
    'Chile',
  ];

  void _mostrarDialogo(BuildContext context, String pais) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: const Color(0xFFE8ECEF),
          title: const Text(
            'País Clicado',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          content: Text(
            'Você clicou em $pais',
            style: const TextStyle(fontSize: 12, color: Colors.black87),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Fechar',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF42A5F5),
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: paises.length,
        itemBuilder: (context, index) {
          final pais = paises[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: InkWell(
              onTap: () => _mostrarDialogo(context, pais),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F4F8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    pais,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}