import 'package:dyma_app/features/cities/data/models/cities_mock.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/app_card.dart';
import '../cities/domain/entities/City.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  late List<City> cities;
  @override
  void initState() {
    super.initState();
    cities = List.from(citiesMock);
  }

  void toggleFavorite(City city) {
    int index = cities.indexOf(city);
    setState(() {
      cities[index].isFavorite = !cities[index].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
          children: [
            ...cities.map(
              (city) => AppCard(city: city, onTap: () => toggleFavorite(city)),
            ),
          ],
        ),
      ),
    );
  }
}
