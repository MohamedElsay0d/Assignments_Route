import 'package:contact_app/views/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff29384D),
      body: Center(
        child: Text("Route",
        style: TextStyle(
          color: Color(0xffFFF1D4),
          fontSize: 40,
            fontFamily: 'Roboto',
            letterSpacing: 4.0, 
            fontWeight: FontWeight.w300, 
          ),),
      ),
    );
  }
}