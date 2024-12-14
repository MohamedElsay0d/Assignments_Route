import 'package:flutter/material.dart';

import '../widgets/button_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff29384D),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color(0xff29384D),
        title: const Text(
          'Route',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Roboto',
            color: Colors.white70,
            letterSpacing: 4.0,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/image.gif'),
              const Text(
                'There is No Contacts Added Here',
                style: TextStyle(
                  color: Color(0xffFFF1D4),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFFF1D4),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const ButtonNavBar();
              });
        },
        child: const Icon(
          Icons.add,
          color: Color(0xff29384D),
        ),
      ),
    );
  }
}
