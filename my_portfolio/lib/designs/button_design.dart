import 'package:flutter/material.dart';

class ButtonDesign {
  static final ButtonStyle contacts = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF13181f),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(10),
      side: BorderSide(color: Color(0xFF333238)),
    ),
  );
}
