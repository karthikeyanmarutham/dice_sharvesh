import 'package:dice_sharvesh/spalsh/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sharvesh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.rakkasTextTheme()
      ),
      home: const SplashScreenPage(),
    );
  }
}
