import 'package:flutter/material.dart';

import 'home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1D2136),
        ),
        scaffoldBackgroundColor: const Color(0xFF1D2136),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}