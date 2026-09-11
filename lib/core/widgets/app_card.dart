import 'package:dyma_app/features/cities/domain/entities/City.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final City city;

  const AppCard({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 175,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(city.imageUrl, fit: BoxFit.cover),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                city.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  backgroundColor: Colors.grey[100],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Icon(Icons.star_border_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
