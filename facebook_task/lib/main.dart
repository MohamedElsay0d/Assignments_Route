import 'package:facebook_task/home_page.dart';
import 'package:facebook_task/home_screen.dart';
import 'package:facebook_task/login_screen.dart';
import 'package:flutter/material.dart';

import 'splach_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
