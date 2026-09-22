import 'package:dyma_app/features/cities/domain/entities/activity.dart';
import 'package:flutter/material.dart';

class InheritedData extends InheritedWidget {
  final List<Activity> activities;

  const InheritedData({
    super.key,
    required this.activities,
    required super.child,
  });

  static InheritedData of(BuildContext context) {
    final InheritedData? result = context
        .dependOnInheritedWidgetOfExactType<InheritedData>();
    assert(result != null, 'No InheritedData found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedData oldActivities) {
    return activities != oldActivities.activities;
  }
}
