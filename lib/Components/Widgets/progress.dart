import 'package:flutter/material.dart';
import 'package:pomodoro_app/Utils/utils.dart';

class ProgressNoted extends StatelessWidget {
  const ProgressNoted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '0/4',
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              '0/12',
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'ROUND',
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              'GOALS',
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
