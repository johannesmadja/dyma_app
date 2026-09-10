import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mon App Bar"),
        actions: [
          IconButton(
              onPressed: () => print('rechercher'),
              icon: const Icon(Icons.search)
          ),
          IconButton(
              onPressed: () => debugPrint('options'),
              icon: const Icon(Icons.more_vert),
              tooltip: 'Autres options',
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("Voyage enregistré")));
            },
            child: const Text("Enregistrer")
        ),
      ),
    );
  }
}