import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You did it.',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
