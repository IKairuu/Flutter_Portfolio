import 'dart:ui';

import 'package:flutter/material.dart';

class IdentifyTechnology {
  static List<Color> identifyColor(String tech) {
    List<String> languages = [
      "Python",
      "Java",
      "C++",
      "C#",
      "Javascript",
      "Dart",
      "PHP",
      "HTML",
      "CSS",
    ];
    List<String> technologies = [
      "Flutter",
      "Node.js",
      "Express.js",
      "Firebase",
      "MySQL",
      "discord.py",
      "SFML",
      "PyQT",
      "Hive",
    ];
    List<String> tools = ["Postman", "Render", "Git", "Replit"];
    if (languages.contains(tech)) {
      return [const Color.fromARGB(255, 87, 79, 13), Colors.yellow];
    } else if (technologies.contains(tech)) {
      return [Color(0xFF152720), Color(0xFF55aa64)];
    } else if (tools.contains(tech)) {
      return [Color(0xFF132738), Colors.white];
    }
    return [];
  }
}
