import 'package:flutter/material.dart';
import 'package:health_app/pages/health_app_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HealthAppMainPage(),
    );
  }
}
