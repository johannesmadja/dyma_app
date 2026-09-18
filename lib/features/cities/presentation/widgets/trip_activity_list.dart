import 'package:flutter/material.dart';

import '../../domain/entities/activity.dart';

class TripActivityList extends StatelessWidget {
  final List<Activity> activities;

  const TripActivityList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return const Text("Bienvienue !");
  }
}
