import 'package:flutter/material.dart';
import 'package:flutter_app5/pages/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 5',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      home: MainScreen(),
    );
  }
}
