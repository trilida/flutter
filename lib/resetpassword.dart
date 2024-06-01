import 'package:flutter/material.dart';
import 'package:assesment2/2Homepage.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for text fields
    final emailController = TextEditingController();
    final newPasswordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    // State to manage the visibility of the password
    bool obscureText = true;

    // Function to toggle the visibility of the password
    void toggleVisibility() {
      obscureText = !obscureText;
    }

    // Function to display Snackbars
    void showSnackbar(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 234, 248),
      appBar: AppBar(
        title: const Text('Reset Password'),
        backgroundColor: const Color.fromARGB(255, 242, 234, 248),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: newPasswordController,
              decoration: InputDecoration(
                labelText: 'New Password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: toggleVisibility,
                ),
              ),
              obscureText: obscureText,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: toggleVisibility,
                ),
              ),
              obscureText: obscureText,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 69, 40, 128),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              onPressed: () {
                // Check if any field is empty
                if (emailController.text.isEmpty ||
                    newPasswordController.text.isEmpty ||
                    confirmPasswordController.text.isEmpty) {
                  showSnackbar("All fields are required");
                } else if (newPasswordController.text !=
                    confirmPasswordController.text) {
                  showSnackbar("Make sure your passwords match");
                } else {
                  // Navigate to the HomePage if everything is correct
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }
              },
              child: const SizedBox(
                width: double
                    .infinity, // Makes the button stretch to full width of its parent container
                height: 60, 
              child: Center (
                 child: Text(
                      'Reset Password',
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
              )
             
              ),
            ),
          ],
        ),
      ),
    );
  }
}
