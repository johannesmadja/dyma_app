import 'package:dyma_app/core/utils/app_assets.dart';
import 'package:dyma_app/features/cities/domain/entities/City.dart';

final List<City> citiesMock = [
  City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
  City(name: 'Lyon', imageUrl: AppAssets.lyon, isFavorite: false),
  City(name: 'Bordeaux', imageUrl: AppAssets.bordeaux, isFavorite: false),
  City(name: 'Nice', imageUrl: AppAssets.nice, isFavorite: false),
];
