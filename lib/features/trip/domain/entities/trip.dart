class Trip {
  final String city;
  final List<String> activityIds;
  DateTime? date;

  Trip({required this.city, required this.activityIds, this.date});
}
