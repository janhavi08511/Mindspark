import 'package:flutter/material.dart';
import 'signup.dart';
class UserSignupScreen extends StatelessWidget {
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
                    SizedBox(height: 5,),
                    Column( // Added a Column here to wrap the form fields
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Your Nike Name'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Nike Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Age'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Age',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Gender'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Gender',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Avtar'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Select Avtar',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Handle form submission
                          },
                          child: Text('SUBMIT'),
                          style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.grey,
                            foregroundColor: Colors.black, // White text color
                          ),
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