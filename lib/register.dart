import 'package:flutter/material.dart';
import 'package:assesment2/2Homepage.dart'; // Import homepage

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 242, 234, 248), // Background color of the page with purple shade
      appBar: AppBar(
        title: const Text('Register'), // AppBar title
        backgroundColor: const Color.fromARGB(
            255, 242, 234, 248), // AppBar color with purple shade
        elevation: 0, // Removes shadow under the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(
            16.0), // Padding around the content in the body
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Vertically center the content
          children: <Widget>[
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Masuk Sebagai', // Dropdown label
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
              onChanged: (String? newValue) {
                // Logic when an item is selected
              },
            ),
            const SizedBox(height: 20), // Spacing between elements
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Name', // Label for the input field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacing between elements
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Email address', // Label for the input field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacing between elements
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Create password', // Label for the input field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                suffixIcon: const Icon(
                    Icons.visibility_off), // Icon for password visibility
              ),
              obscureText: true, // Hide the text input (for passwords)
            ),
            const SizedBox(height: 20), // Spacing between elements
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 69, 40, 128),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const SizedBox(
                width: double
                    .infinity, // Makes the button stretch to full width of its parent container
                height: 60, // Set the height of the button
                child: Center(
                  child: Text(
                    'Sign Up', // Text for the button
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
