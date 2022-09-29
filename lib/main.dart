import 'package:flutter/material.dart';
import 'package:use_material_3/pages/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.grey,
        colorScheme: ColorScheme.dark(
          background: Colors.grey.shade300,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
