import 'package:dyma_app/features/cities/data/models/activities_mock.dart';
import 'package:dyma_app/features/cities/domain/entities/City.dart';
import 'package:dyma_app/features/trip/domain/entities/trip.dart';
import 'package:dyma_app/features/trip/presentation/widgets/trip_overview.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/activity.dart';
import '../widgets/activity_list.dart';
import '../widgets/trip_activity_list.dart';

class CityPage extends StatefulWidget {
  const CityPage({super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  late List<Activity> activities;
  late Trip my_trip;
  late int _selectedIndex;

  void _selectedDestination(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void toggleSelectedActivity(String activityId) {
    setState(() {
      my_trip.activityIds.contains(activityId)
          ? my_trip.activityIds.remove(activityId)
          : my_trip.activityIds.add(activityId);
    });
  }

  @override
  void initState() {
    super.initState();
    my_trip = Trip(city: '', activityIds: [], date: DateTime.now());
    _selectedIndex = 0;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final city = ModalRoute.of(context)!.settings.arguments as City;
    activities = activities_mock
        .where((ac) => ac.city.name == city.name)
        .toList();
  }

  Future<void> setDate() async {
    final DateTime today = DateUtils.dateOnly(DateTime.now());
    final DateTime lastDate = DateTime(today.year + 2, 12, 31);
    final DateTime? currentTripDate = my_trip.date;
    final DateTime? normalizedTripDate = currentTripDate == null
        ? null
        : DateUtils.dateOnly(currentTripDate);
    final DateTime initialDate =
        normalizedTripDate == null ||
            normalizedTripDate.isBefore(today) ||
            normalizedTripDate.isAfter(lastDate)
        ? today
        : normalizedTripDate;

    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: today,
      lastDate: lastDate,
    );
    if (!mounted || selectedDate == null) return;

    setState(() {
      my_trip.date = selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activities.isNotEmpty ? activities.first.city.name : ''),
      ),
      body: Column(
        children: [
          TripOverview(trip: my_trip, setDate: setDate),
          Expanded(
            child: _selectedIndex == 0
                ? ActivityList(
                    activities: activities,
                    selectedActivities: my_trip.activityIds,
                    toggleSelectedActivity: toggleSelectedActivity,
                  )
                : TripActivityList(activities: activities),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _selectedDestination,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Découverte'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoris'),
        ],
      ),
    );
  }
}
