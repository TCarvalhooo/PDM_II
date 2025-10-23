import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Dart',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int _contador = 0; // Variável para armazenar o número de cliques

  void _incrementarContador() {
    setState(() {
      _contador++; // Incrementa o contador
    });
    // Mostra o SnackBar com a mensagem
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Hello!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Dart Simples')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Exibe o contador
            Text(
              'Você clicou $_contador vez(es).',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20), // Espaço entre o texto e o botão
            ElevatedButton(
              onPressed: _incrementarContador, // Chama a função ao clicar
              child: const Text('Clique Aqui'),
            ),
          ],
        ),
      ),
    );
  }
}