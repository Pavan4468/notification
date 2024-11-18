import 'package:flutter/material.dart';
import 'SignInPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up' ,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Ensure content is scrollable
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              // Welcome Text with Animation
              AnimatedDefaultTextStyle(
                duration: const Duration(seconds: 1),
                style: const TextStyle(
                  fontSize: 28, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.deepPurple
                ),
                child: const Text('Create Your Account!'),
              ),
              const SizedBox(height: 30),
              
              // Email TextField
              _buildTextField(
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
              
              const SizedBox(height: 20),

              // Password TextField
              _buildTextField(
                label: 'Password',
                keyboardType: TextInputType.text,
                obscureText: true,
              ),

              const SizedBox(height: 20),

              // Confirm Password TextField
              _buildTextField(
                label: 'Confirm Password',
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              
              const SizedBox(height: 30),

              // Sign Up Button with Animation
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  // Handle sign-up logic and navigate back to SignInPage
                  Navigator.pop(context);
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Text Button for Sign In Navigation
              TextButton(
                onPressed: () {
                  // Navigate to Sign In Page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                child: const Text(
                  "Already have an account? Sign In",
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Custom Method for TextFields to reduce redundancy
  Widget _buildTextField({required String label, required TextInputType keyboardType, required bool obscureText}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple, width: 2),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
