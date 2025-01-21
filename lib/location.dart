import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  final String locationName;
  const Location({super.key, required this.locationName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Location is $locationName'),
      ),
    );
  }
}
