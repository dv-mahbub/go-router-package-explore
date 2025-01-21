import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final int userId;
  const User({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This user Id is $userId'),
      ),
    );
  }
}
