import 'package:dyma_app/features/cities/data/models/activities_mock.dart';
import 'package:dyma_app/features/cities/domain/entities/City.dart';
import 'package:dyma_app/features/cities/domain/entities/activity.dart';
import 'package:dyma_app/features/cities/presentation/widgets/activity_card.dart';
import 'package:flutter/material.dart';

class CityPage extends StatefulWidget {
  const CityPage({super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  late List<Activity> activities;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final city = ModalRoute.of(context)!.settings.arguments as City;
    activities = activities_mock
        .where((ac) => ac.city.name == city.name)
        .toList();
    print(activities);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(activities.first.name)),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: activities.length,
          itemBuilder: (context, index) =>
              ActivityCard(activity: activities[index]),
        ),
      ),
    );
  }
}
