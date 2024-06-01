import 'package:flutter/material.dart';
import 'package:assesment2/register.dart'; // Import registration page
import 'package:assesment2/resetpassword.dart'; // Import reset password page
import 'package:assesment2/2homepage.dart'; // Import homepage

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void showSnackbar(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }

    return Scaffold(
    backgroundColor: const Color.fromARGB(255, 242, 234, 248),
      appBar: AppBar(
        title: const Text('Log In'),
        backgroundColor: const Color.fromARGB(255, 242, 234, 248),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Masuk Sebagai',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              items: <String>['Umum', 'Instansi', 'Administrator']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                suffixIcon: const Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 69, 40, 128),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              onPressed: () {
                if (emailController.text == 'dindasyantik@gmail.com' &&
                    passwordController.text == '6701223075') {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                } else if (emailController.text == 'ghefirasalma@gmail.com' &&
                    passwordController.text == '6701223100') {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                } else if (emailController.text == 'oky@gmail.com' &&
                    passwordController.text == '6701223033') {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                } else if (emailController.text.isEmpty ||
                    passwordController.text.isEmpty) {
                  showSnackbar("All fields are required");
                } else {
                  showSnackbar("Incorrect Email or Password");
                }
              },
              child: const SizedBox(
                width: double
                    .infinity, // Makes the button stretch to full width of its parent container
                height: 60, // Set the height of the button
                child: Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResetPasswordPage()));
              },
              child: const Text('Forgot Password?',
                  style: TextStyle(color: Color.fromARGB(179, 33, 30, 70))),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
              },
              child: const Text('Create An Account!',
                  style: TextStyle(color: Color.fromARGB(179, 33, 30, 70))),
            ),
          ],
        ),
      ),
    );
  }
}
