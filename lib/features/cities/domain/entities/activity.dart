import 'package:dyma_app/features/cities/domain/entities/City.dart';

class Activity {
  String? id;
  String name;
  String image;
  City city;

  Activity({
    this.id,
    required this.name,
    required this.city,
    required this.image,
  });
}
