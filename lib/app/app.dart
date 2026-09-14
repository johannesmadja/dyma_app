import 'package:flutter/material.dart';

import '../core/routes/app_routes.dart';
import '../features/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dyma App',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      routes: AppRoutes.routes,
      home: const MyHomePage(title: 'Dyma Trip'),
    );
  }
}
