import 'package:flutter/material.dart';
import 'package:praactica2/screens/login_cafe.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Café',
      home: LoginCafeScreen()
    );
  }
}