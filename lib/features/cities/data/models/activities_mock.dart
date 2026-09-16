import 'package:dyma_app/features/cities/domain/entities/activity.dart';

import '../../../../core/utils/app_assets.dart';
import '../../domain/entities/City.dart';

final List<Activity> activities_mock = [
  Activity(
    name: 'Le Louvre',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/louvre.jpg',
  ),
  Activity(
    name: 'Les buttes Chaumont',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/chaumont.jpg',
  ),
  Activity(
    name: 'Notre Dame',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/dame.jpg',
  ),
  Activity(
    name: 'La Défense',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/defense.jpg',
  ),
  Activity(
    name: 'Luxembourg',
    city: City(name: 'Lyon', imageUrl: AppAssets.lyon, isFavorite: false),
    image: 'assets/images/activity/luxembourg.jpg',
  ),
  Activity(
    name: 'Montmartre',
    city: City(
      name: 'Bordeaux',
      imageUrl: AppAssets.bordeaux,
      isFavorite: false,
    ),
    image: 'assets/images/activity/montmartre.jpg',
  ),
  Activity(
    name: 'La Défense',
    city: City(name: 'Nice', imageUrl: AppAssets.nice, isFavorite: false),
    image: 'assets/images/activity/defense.jpg',
  ),
  Activity(
    name: 'La Défense',
    city: City(name: 'Lyon', imageUrl: AppAssets.lyon, isFavorite: false),
    image: 'assets/images/activity/defense.jpg',
  ),
];
