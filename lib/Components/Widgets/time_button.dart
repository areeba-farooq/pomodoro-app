import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pomodoro_app/Services/timer_service.dart';
import 'package:provider/provider.dart';

class TimeButton extends StatefulWidget {
  const TimeButton({super.key});

  @override
  State<TimeButton> createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return CircularPercentIndicator(
      radius: 60.0,
      lineWidth: 5.0,
      percent: 1.0,
      backgroundColor: Colors.transparent,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Colors.white,
      animation: true,
      center: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black26,
        ),
        child: IconButton(
          color: Colors.white,
          iconSize: 55,
          onPressed: () {
            provider.timerPlaying
                ? provider.pauseTimer()
                : provider.startTimer();
          },
          icon: provider.timerPlaying
              ? const Icon(
                  Icons.pause,
                )
              : const Icon(
                  Icons.play_arrow,
                ),
        ),
      ),
    );
  }
}
