import 'package:flutter/material.dart';
import 'signup.dart';

class ProSignupScreen extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              Center(
                child: Image.asset(
                  'assets/img/mlogo.jpg',
                  width: 300,
                  height: 90,
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Details',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nice to meet you! Enter your details to register.',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Your Name'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Education'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Education',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Description'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Description',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Photo'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Upload Photo',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Handle form submission
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.black, // Black text color
                          ),
                          child: Text('SUBMIT'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
