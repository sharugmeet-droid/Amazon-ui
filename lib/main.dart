import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const AmazonCloneApp());
}

class AmazonCloneApp extends StatelessWidget {
  const AmazonCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFF232F3E),
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const SplashScreen(),
    );
  }
}