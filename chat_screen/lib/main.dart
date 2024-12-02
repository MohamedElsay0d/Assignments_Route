import 'package:flutter/material.dart';

import 'chat_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Chat Screen',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ChatScreen()
    );
  }
}
