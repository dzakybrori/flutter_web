import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Halo Semuanya!',
            style: GoogleFonts.poppins(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
