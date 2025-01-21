import 'package:flutter/material.dart';

class VisitedPlaces extends StatelessWidget {
  final String areaId;
  const VisitedPlaces({super.key, required this.areaId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Visited Places inside area $areaId: .......'),
      ),
    );
  }
}
