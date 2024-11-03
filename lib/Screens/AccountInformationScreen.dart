import 'package:flutter/material.dart';

class AccountInformationScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController(text: "Philippe Troussier");
  final TextEditingController emailController = TextEditingController(text: "troussier@gmail.com");
  final TextEditingController phoneController = TextEditingController(text: "(+1) 6102347305");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account information'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AccountInfoField(
                label: "Full Name",
                controller: nameController,
              ),
              SizedBox(height: 20),
              AccountInfoField(
                label: "Email Address",
                controller: emailController,
              ),
              SizedBox(height: 20),
              AccountInfoField(
                label: "Phone Number",
                controller: phoneController,
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle save settings action
                  },
                  child: Text(
                    "Save Settings",
                    style: TextStyle(color: Colors.white), // White text color
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Red color for the button
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountInfoField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  AccountInfoField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          textAlign: TextAlign.center, // Center the text within the input
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}