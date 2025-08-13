import 'package:flutter/material.dart';
import 'Config/Theme/App_theme.dart';
import 'Config/Theme/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Cambia este número para cambiar el color del tema
    const int selectedColorIndex = 0; // 0=Morado, 1=Azul, 2=Rosa, 3=Naranja, 4=Verde azulado, 5=Verde
    
    return MaterialApp(
      title: 'Mi amorcito',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColorIndex).theme(),
      home: const ChatScreen(),
    );
  }
}