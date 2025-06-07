<<<<<<< HEAD
import 'dart:async';
import 'package:flutter/material.dart';
import 'Imagescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ImageScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
    ),
    );
  }
}
=======
import 'dart:async';
import 'package:flutter/material.dart';
import 'Imagescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ImageScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
    ),
    );
  }
}
>>>>>>> 9854d16524e6b9ae04b26e4f52b81f4a76682c00
