import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe_game/Screens/game.dart';
import 'package:flutter_tic_tac_toe_game/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
