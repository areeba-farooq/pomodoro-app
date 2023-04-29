import 'package:flutter/material.dart';
import 'package:pomodoro_app/Services/timer_service.dart';
import 'package:provider/provider.dart';

import '../../Utils/utils.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final seconds = (provider.currentDuration % 60);
    return Column(
      children: [
        Text(
          "FOCUS🎯",
          style: textStyle(40, Colors.white, FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Text(
                (provider.currentDuration ~/ 60).toString(),
                style: textStyle(
                  90,
                  const Color(0xffBA4949),
                  FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              ":",
              style: textStyle(60, Colors.white, FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Text(
                seconds == 0
                    ? "${seconds.round()}0"
                    : seconds.round().toString(),
                style: textStyle(
                  90,
                  const Color(0xffBA4949),
                  FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
