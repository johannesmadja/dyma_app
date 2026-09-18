import 'package:dyma_app/features/cities/domain/entities/activity.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;
  final bool isSelected;
  final VoidCallback? onToggle;

  const ActivityCard({
    super.key,
    required this.activity,
    this.isSelected = false,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Ink.image(
            fit: BoxFit.cover,
            image: AssetImage(activity.image),
            child: InkWell(onTap: onToggle),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              activity.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                backgroundColor: Colors.grey[100],
              ),
            ),
          ),
          if (isSelected)
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(Icons.check_circle, color: Colors.green, size: 35),
            ),
        ],
      ),
    );
  }
}
