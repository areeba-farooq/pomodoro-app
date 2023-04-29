import 'package:flutter/material.dart';
import 'package:pomodoro_app/Components/Widgets/progress.dart';
import 'package:pomodoro_app/Components/Widgets/timeoptions.dart';
import 'package:pomodoro_app/Utils/utils.dart';
import '../Components/Widgets/time_button.dart';
import '../Components/Widgets/timercards.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBA4949),
      appBar: AppBar(
        backgroundColor: const Color(0xffBA4949),
        title: Text(
          'POMOFOCUS⌛',
          style: textStyle(23, Colors.white, FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            iconSize: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: const [
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimeOptions(),
              SizedBox(
                height: 40,
              ),
              TimeButton(),
              SizedBox(
                height: 40,
              ),
              ProgressNoted()
            ],
          ),
        ),
      ),
    );
  }
}
