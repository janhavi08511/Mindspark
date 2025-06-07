<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'splashscreen.dart';
// Ensure this import is correct
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindspark',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 150, 124, 194)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

=======
import 'package:flutter/material.dart';
import 'splashscreen.dart';
// Ensure this import is correct
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindspark',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 150, 124, 194)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

>>>>>>> 9854d16524e6b9ae04b26e4f52b81f4a76682c00
