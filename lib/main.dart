import 'package:flutter/material.dart';
import 'Config/Theme/App_theme.dart';
import 'Config/Theme/presentation/Screes/chat/chat_creen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi amorcito',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 20).theme(),
      home: const ChatScreen(),
    );
  }
}