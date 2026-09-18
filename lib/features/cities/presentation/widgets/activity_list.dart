import 'package:flutter/material.dart';

import '../../domain/entities/activity.dart';
import 'activity_card.dart';

class ActivityList extends StatelessWidget {
  final List<Activity> activities;
  final List<String> selectedActivities;
  final ValueChanged<String> toggleSelectedActivity;

  const ActivityList({
    super.key,
    required this.activities,
    required this.selectedActivities,
    required this.toggleSelectedActivity,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1.0,
      ),
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index];
        return ActivityCard(
          activity: activities[index],
          isSelected: selectedActivities.contains(activity.id),
          onToggle: activity.id != null
              ? () => toggleSelectedActivity(activity.id!)
              : null,
        );
      },
    );
  }
}
