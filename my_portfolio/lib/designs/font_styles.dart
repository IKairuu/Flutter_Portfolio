import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyles {
  static final TextStyle occupation = TextStyle(
    color: Color(0xFF4ba3ec),
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle longDetails = GoogleFonts.dmSans(
    fontSize: 12,
    color: Color(0xFF898f9c),
    fontWeight: FontWeight.w400,
  );

  static final TextStyle titleSections = GoogleFonts.dmSans(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static final TextStyle techTitles = GoogleFonts.dmSans(
    fontSize: 17,
    letterSpacing: 3,
    color: Color(0xFF898f9c),
    fontWeight: FontWeight.w700,
  );

  static final TextStyle skillTitles = GoogleFonts.dmSans(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final TextStyle repoDescription = TextStyle(
    color: Color(0xFF898f9c),
    fontSize: 12,
  );

  static final TextStyle forkStar = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle experienceDate = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle experienceDetails = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w200,
  );
}
