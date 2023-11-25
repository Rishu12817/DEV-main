import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RTextTheme {
  static TextTheme lightTextTheme = TextTheme(

      headlineSmall: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        // fontSize: 20, 
      ),
      headlineMedium: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        // fontSize: 20, 
      ),
      headlineLarge: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        // fontSize: 20, 
      ),
  );
  static TextTheme darkTextTheme  = TextTheme(
      headlineSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        // fontSize: 20, 
      ),
      headlineMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        // fontSize: 20, 
      ),
      headlineLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        // fontSize: 20, 
      ),);
}
