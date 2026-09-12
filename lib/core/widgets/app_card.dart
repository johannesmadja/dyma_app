import 'package:dyma_app/features/cities/domain/entities/City.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final City city;
  final VoidCallback onTap;

  const AppCard({super.key, required this.city, required this.onTap});

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
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(city.imageUrl),
              child: InkWell(onTap: onTap),
            ),
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
              child: Icon(
                city.isFavorite ? Icons.star_border_outlined : Icons.star,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
