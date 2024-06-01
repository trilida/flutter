import 'package:assesment2/1login.dart';
// ignore: unused_import
import 'package:assesment2/register.dart';
import 'package:flutter/material.dart'; // Impor halaman registrasi

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Disables the debug banner
      title: 'CareeMap App', // Application title used in task manager
      home: LoginPage(), // Sets LoginPage as the home route
    );
  }
}
