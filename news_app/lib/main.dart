import 'package:flutter/material.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/login/login_screen.dart';
import 'package:news_app/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashScreen(),
        'login': (context) => const LoginScreen(),
        'home': (context) => const HomeScreen()
      },
    );
  }
}
