import 'package:dyma_app/features/cities/data/models/cities_mock.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/app_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.search),
            tooltip: 'Rechercher',
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.more_vert),
            tooltip: 'Autres options',
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [...citiesMock.map((city) => AppCard(city: city))],
        ),
      ),
    );
  }
}
