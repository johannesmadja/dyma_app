import 'package:dyma_app/features/cities/domain/entities/activity.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Image.asset(activity.image, fit: BoxFit.cover),
    );
  }
}
