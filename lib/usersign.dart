<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:mindspark/homescreen.dart';
import 'signup.dart';

class UserSignupScreen extends StatefulWidget {
  const UserSignupScreen({super.key});

  @override
  UserSignupScreenState createState() => UserSignupScreenState();
}

class UserSignupScreenState extends State<UserSignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String? _selectedGender = 'Male'; // Default gender value
  String? _selectedAvatar;

  // Validator functions
  String? _validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Nike Name is required';
    } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Nike Name must contain only letters';
    }
    return null;
  }

  String? _validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'Age is required';
    }

    int? age = int.tryParse(value); // Convert to int

    if (age == null) {
      return 'Please enter a valid number for age';
    } else if (age < 0 || age > 100) {
      return 'Age must be between 0 and 100';
    }

    return null; // Valid input
  }

  String? _validateGender(String? value) {
    if (value == null || value.isEmpty) {
      return 'Gender is required';
    }
    return null;
  }

  String? _validateAvatar() {
    if (_selectedAvatar == null) {
      return 'Avatar selection is required';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Form Submitted Successfully')));
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

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
                  'assets/img/Mlogo.jpg',
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Nice to meet you! Enter your details to register.',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Your nick name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: _validateName,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        controller: _ageController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: _validateAge,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _selectedGender,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedGender = newValue;
                          });
                        },
                        validator: _validateGender,
                        items:
                            <String>[
                              'Male',
                              'Female',
                              'Other',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Select Avatar',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedAvatar = 'avatar1';
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 50,
                                  color:
                                      _selectedAvatar == 'avatar1'
                                          ? Colors.blue
                                          : Colors.grey,
                                ),
                                Text('Avatar 1'),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedAvatar = 'avatar2';
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  size: 50,
                                  color:
                                      _selectedAvatar == 'avatar2'
                                          ? Colors.blue
                                          : Colors.grey,
                                ),
                                Text('Avatar 2'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _submitForm,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.black,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0,
                              right: 35.0,
                            ),
                            child: Text('SUBMIT'),
                          ),
                        ),
                      ),
                    ],
                  ),
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
=======
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
>>>>>>> 9854d16524e6b9ae04b26e4f52b81f4a76682c00
