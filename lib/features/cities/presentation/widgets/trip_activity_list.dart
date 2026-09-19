import 'package:flutter/material.dart';

import '../../domain/entities/activity.dart';

class TripActivityList extends StatelessWidget {
  final List<Activity> activities;
  final ValueChanged<String> onDelete;

  const TripActivityList({
    super.key,
    required this.activities,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index];
        final activityId = activity.id;
        return Card(
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(activity.image)),
            title: Text(activity.name),
            subtitle: Text(activity.city.name),
            trailing: IconButton(
              tooltip: 'Retirer ${activity.name} du voyage',
              icon: Icon(Icons.delete, color: Colors.redAccent),
              onPressed: activityId != null ? () => onDelete(activityId) : null,
            ),
          ),
        );
      },
    );
  }
}
