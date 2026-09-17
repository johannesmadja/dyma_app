import 'package:dyma_app/features/cities/data/models/activities_mock.dart';
import 'package:dyma_app/features/cities/domain/entities/City.dart';
import 'package:dyma_app/features/cities/domain/entities/activity.dart';
import 'package:dyma_app/features/cities/presentation/widgets/activity_card.dart';
import 'package:dyma_app/features/trip/domain/entities/trip.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/date_formatter.dart';

class CityPage extends StatefulWidget {
  const CityPage({super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  late List<Activity> activities;
  Trip my_trip = Trip(city: '', activities: [], date: DateTime.now());

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
      appBar: AppBar(
        title: Text(activities.isNotEmpty ? activities.first.city.name : ''),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DateFormatter.dateFormat.format(my_trip.date!)),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Sélectionnez une date"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) =>
                  ActivityCard(activity: activities[index]),
            ),
          ),
        ],
      ),
    );
  }
}
