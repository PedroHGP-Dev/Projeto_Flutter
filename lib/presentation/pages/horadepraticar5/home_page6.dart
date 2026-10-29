import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, bool> _cores = {
    'Vermelho': false,
    'Verde': false,
    'Azul': false,
    'Laranja': false,
    'Amarelo': false,
    'Cinza': false,
    'Rosa': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF636E7B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E3A5F),
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Color(0xFF64B5F6), fontSize: 18),
        ),
      ),
      body: Center(
        child: Container(
          width: 290,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF64B5F6),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundColor: Colors.red,
                child: Icon(Icons.info, color: Colors.white, size: 22),
              ),
              const SizedBox(height: 12),
              const Text(
                'Pesquisa de Opinião',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Marque suas Cores Preferidas',
                style: TextStyle(fontSize: 11, color: Colors.black87),
              ),
              const SizedBox(height: 12),
              ..._cores.keys.map((cor) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cor,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 22,
                        width: 22,
                        child: Checkbox(
                          value: _cores[cor],
                          onChanged: (val) {
                            setState(() {
                              _cores[cor] = val ?? false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green[700],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Enviar Informação',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}