import 'package:dyma_app/features/cities/presentation/pages/city_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const cityDetail = '/city-detail';

  static Map<String, WidgetBuilder> get routes {
    return {cityDetail: (_) => const CityPage()};
  }
}
