import 'package:flutter/material.dart';
import 'package:pomodoro_app/Services/timer_service.dart';
import 'package:provider/provider.dart';

import 'Screens/pomodoro_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => TimerService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PomodoroScreen(),
    );
  }
}
