import 'package:dyma_app/features/cities/domain/entities/activity.dart';

import '../../../../core/utils/app_assets.dart';
import '../../domain/entities/City.dart';

final List<Activity> activities_mock = [
  Activity(
    name: 'Le Louvre',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activities/louvre.jpg',
  ),
  Activity(
    name: 'Les buttes Chaumont',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activities/chaumont.jpg',
  ),
  Activity(
    name: 'Notre Dame',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activities/dame.jpg',
  ),
  Activity(
    name: 'La Défense',
    city: City(name: 'Paris', imageUrl: AppAssets.paris, isFavorite: false),
    image: 'assets/images/activities/defense.jpg',
  ),
];
