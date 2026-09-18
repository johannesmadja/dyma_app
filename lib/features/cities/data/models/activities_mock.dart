import 'package:dyma_app/features/cities/domain/entities/activity.dart';

import '../../../../core/utils/app_assets.dart';
import '../../domain/entities/City.dart';

final List<Activity> activities_mock = [
  Activity(
    id: '1',
    name: 'Le Louvre',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/louvre.jpg',
  ),
  Activity(
    id: '2',
    name: 'Les buttes Chaumont',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/chaumont.jpg',
  ),
  Activity(
    id: '3',
    name: 'Notre Dame',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/dame.jpg',
  ),
  Activity(
    id: '4',
    name: 'La Défense',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activity/defense.jpg',
  ),
  Activity(
    id: '5',
    name: 'Luxembourg',
    city: City(name: 'Lyon', imageUrl: AppAssets.lyon, isFavorite: false),
    image: 'assets/images/activity/luxembourg.jpg',
  ),
  Activity(
    id: '6',
    name: 'Montmartre',
    city: City(
      name: 'Bordeaux',
      imageUrl: AppAssets.bordeaux,
      isFavorite: false,
    ),
    image: 'assets/images/activity/montmartre.jpg',
  ),
  Activity(
    id: '7',
    name: 'La Défense',
    city: City(name: 'Nice', imageUrl: AppAssets.nice, isFavorite: false),
    image: 'assets/images/activity/defense.jpg',
  ),
  Activity(
    id: '8',
    name: 'La Défense',
    city: City(name: 'Lyon', imageUrl: AppAssets.lyon, isFavorite: false),
    image: 'assets/images/activity/defense.jpg',
  ),
];
