import 'package:flutter/painting.dart';

class ContainerDesign {
  static final BoxDecoration mainContainer = BoxDecoration(
    color: Color(0xFF10151c),
    borderRadius: BorderRadius.circular(20),
  );

  static final BoxDecoration occupation = BoxDecoration(
    color: Color(0xFF19325a),
    borderRadius: BorderRadius.circular(20),
    border: BoxBorder.all(color: Color(0xFF4ba3ec)),
  );

  static final BoxDecoration contacts = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(0xFF13181f),
    border: BoxBorder.all(color: Color(0xFF898f9c)),
  );

  static final BoxDecoration iconInfo = BoxDecoration(
    color: Color(0xFF141530),
    borderRadius: BorderRadius.circular(50),
  );

  static final BoxDecoration languageContainer = BoxDecoration(
    color: Color(0xFF13181f),
    borderRadius: BorderRadius.circular(10),
    border: BoxBorder.all(color: Color(0xFF333238)),
  );

  static final BoxDecoration repoContainers = BoxDecoration(
    color: Color(0xFF13181f),
    borderRadius: BorderRadius.circular(10),
    border: BoxBorder.all(color: Color(0xFF333238)),
  );

  static final BoxDecoration repoImages = BoxDecoration(
    color: Color(0xFF06090d),
    borderRadius: BorderRadius.circular(15),
  );
}
