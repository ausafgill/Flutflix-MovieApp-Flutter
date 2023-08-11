import 'package:flutter/material.dart';
import 'package:movie_app/home_screen.dart';
import 'package:movie_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FluxFlix',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black45,
      ),
      home: SplashScreen(),
    );
  }
}
