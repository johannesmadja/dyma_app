import 'package:flutter/material.dart';

import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/trip.dart';

class TripOverview extends StatelessWidget {
  final Trip trip;
  final VoidCallback setDate;

  const TripOverview({super.key, required this.trip, required this.setDate});

  double get amount => 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                trip.date != null
                    ? DateFormatter.dateFormat.format(trip.date!)
                    : 'Sélectionner une date',
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius
                        .zero, // ⬅️ Supprime l'arrondi (bords carrés)
                  ),
                ),
                onPressed: setDate,
                child: const Text(
                  "Sélectionnez une date",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Montant / Personne", style: TextStyle(fontSize: 16)),
              Text("$amount €", style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
