import 'package:flutter/material.dart';
import 'signup.dart';
import 'pro.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/img/Mlogo.jpg',
                width: 300,
                height: 90,
              ),
            ),
            Text(
              'Spark a Healthier Mind',
              style: TextStyle(
                fontFamily: 'VollkornSC',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 150),
            Text(
              'How do you want to enter the app?',
              style: TextStyle(
                fontFamily: 'VollkornSC',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildButton(context, 'USER'),
            SizedBox(height: 10),
            _buildButton(context, 'PROFESSIONAL'),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: Size(double.infinity, 80),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          if (text == 'USER') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignupScreen(),
              ), // User Signup
            );
          } else if (text == 'PROFESSIONAL') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProScreen(),
              ), // User Signup
            );
          }
        },
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'VollkornSC',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
