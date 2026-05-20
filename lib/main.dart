import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(const SocialApp());

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF4f378a),
        scaffoldBackgroundColor: const Color(0xFFf9f9f9),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0, centerTitle: true),
      ),
      home: const HomeScreen(),
    );
  }
}
