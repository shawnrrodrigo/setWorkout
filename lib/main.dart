import 'package:flutter/material.dart';
import 'package:setworkout/login.dart';
import 'package:setworkout/menu.dart';
import 'package:setworkout/schedule.dart';
import 'package:setworkout/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Set Workout',
      theme: ThemeData(
          backgroundColor: Color.fromRGBO(83, 184, 166, 1),
          buttonColor: Color.fromRGBO(51, 53, 59, 1),
          shadowColor: Color.fromRGBO(217, 217, 217, 1)),
      routes: {
        '/': (ctx) => ScheduleScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        MenuScreen.routeName: (ctx) => MenuScreen(),
        ScheduleScreen.routeName: (ctx) => ScheduleScreen(),
      },
    );
  }
}
