import 'package:flutter/material.dart';
import 'package:pomodoro_app/Services/timer_service.dart';
import 'package:pomodoro_app/Utils/utils.dart';
import 'package:provider/provider.dart';

class TimeOptions extends StatelessWidget {
  // double selectedTime = 1500;

  const TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: selectedTimes.map((time) {
        return InkWell(
          onTap: () => provider.selectTime(double.parse(time)),
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10),
            width: 70,
            height: 50,
            decoration: int.parse(time) == provider.selectedTime
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  )
                : BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.white30,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
            child: Text(
              (int.parse(time) ~/ 60).toString(),
              style: textStyle(
                  25,
                  int.parse(time) == provider.selectedTime
                      ? const Color(0xffBA4949)
                      : Colors.white,
                  FontWeight.w500),
            ),
          ),
        );
      }).toList()),
    );
  }
}
