import 'package:flutter/material.dart';
import 'package:my_portfolio/models/repository.dart';
import 'package:my_portfolio/models/technology.dart';

ValueNotifier<List<Technology>> languages = ValueNotifier([
  Technology(
    name: "Python",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1280px-Python-logo-notext.svg.png",
    type: "language",
  ),
  Technology(
    name: "Java",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIEj79-a0pk2kUNpSQvkwAwSswe2IpzKwIp29mdROYdA&s&ec=121633949",
    type: "language",
  ),
  Technology(
    name: "C++",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsU0idp6ianF_4UlSYhbSNvHXz22bBkZSkA3623S6A8A&s&ec=121633949",
    type: "language",
  ),
  Technology(
    name: "C#",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPuwI5ZZsaWVegj_ETBXqn5vdWEAK-s1mmwIrOY32l6A&s&ec=121633949",
    type: "language",
  ),
  Technology(
    name: "Javascript",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
    type: "language",
  ),
  Technology(
    name: "Dart",
    image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Dart_logo.png",
    type: "language",
  ),
  Technology(
    name: "PHP",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1280px-PHP-logo.svg.png",
    type: "language",
  ),
  Technology(
    name: "HTML",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-cg9uc0AZLlERYLVs9UY-i5BctfHVUtX5kQ&s",
    type: "language",
  ),
  Technology(
    name: "CSS",
    image:
        "https://t3.ftcdn.net/jpg/05/15/64/02/360_F_515640293_nJo6TqIZqDNpKNTJ6Ufzuikmtq8VyNoV.jpg",
    type: "language",
  ),
]);

ValueNotifier<List<Technology>> technologies = ValueNotifier([
  Technology(
    name: "Flutter",
    image: "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png",
    type: "technology",
  ),
  Technology(
    name: "Node.js",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgq-pSgV3rs-MN4jHtgGNqwRLcrAWp2bQOkA&s",
    type: "technology",
  ),
  Technology(
    name: "Express.js",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKmtAv2G_LoVvYzVphgkaW6W1yj3z0tR7igw&s",
    type: "technology",
  ),
  Technology(
    name: "Firebase",
    image:
        "https://static.vecteezy.com/system/resources/previews/072/969/382/non_2x/firebase-logo-icon-high-resolution-free-vector.jpg",
    type: "technology",
  ),
  Technology(
    name: "MySQL",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc5niSKZpZhcw5Cxk4e5k_-_TNIeaRfu2fgw&s",
    type: "technology",
  ),
  Technology(
    name: "discord.py",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOAFlOp6DJnRMa8BoJE3EFnkiF46PZc8-Rsg&s",
    type: "technology",
  ),
  Technology(
    name: "SFML",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyVZB_XWqdHWKCYHHEs8IUVDXIHh4aHFDe1w&s",
    type: "technology",
  ),
  Technology(
    name: "PyQT",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDPmkKkLpr59Nbm9p6VU_fCX1g_ar7T3yiaw&s",
    type: "technology",
  ),
]);

ValueNotifier<List<Technology>> tools = ValueNotifier([
  Technology(
    name: "Postman",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJwbzJZ69SSTLQe8ySIgIMMB68JLukoIkJfQ&s",
    type: "tools",
  ),
  Technology(
    name: "Render",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpix2GnOWQeWgrpXRYDLC7yGaT5-aVg4UD8A&s",
    type: "tools",
  ),
  Technology(
    name: "Git",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/3840px-Git_icon.svg.png",
    type: "tools",
  ),
  Technology(
    name: "Replit",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/New_Replit_Logo.svg/3840px-New_Replit_Logo.svg.png",
    type: "tools",
  ),
]);

ValueNotifier<List<Repository>> repositories = ValueNotifier([
  Repository(
    title: "Project_Hakbang",
    imageUrl: "assets/hakbang_main_logo.png",
    stars: 0,
    forks: 1,
    description:
        "HAKBANG is an educational guidance platform designed to help Filipino senior high school students take the right hakbang toward making informed and strategic decisions as they prepare for higher education.",
    technologies: ["Dart", "Flutter", "Git"],
    githubLink: "https://github.com/IKairuu/Project_Hakbang",
  ),
  Repository(
    title: "Project_Hakbang_Server",
    imageUrl: "SS",
    stars: 0,
    forks: 0,
    description:
        "API Server for providing third party services to Hakbang Application. The server implements a modular layered acrhitecture interconnecting messages from the application requests and server responses that includes Gemini AI and Firestore",
    technologies: [
      "Javascript",
      "Node.js",
      "Express.js",
      "Firebase",
      "Postman",
      "Git",
    ],
    githubLink: "https://github.com/IKairuu/Project_Hakbang_Server",
  ),
  Repository(
    title: "Smart Spend",
    imageUrl: "SS",
    stars: 0,
    forks: 0,
    description:
        "Smart Spend is a an AI powered expense and income tracking platform capable of storing expense descriptions and incomes. Smart Spend implements informational charts to monitor expenses and their category of expenses.",
    technologies: ["Dart", "Flutter", "Hive"],
    githubLink: "https://github.com/IKairuu/Smart_Spend",
  ),
  Repository(
    title: "Itsuki-Bot",
    imageUrl: "assets/itsuki.png",
    stars: 3,
    forks: 0,
    description:
        "Itsuki Nakano Discord Study Bot - Your personal study partner with the voice and attitude of Itsuki Nakano from The Quintessential Quintuplets! She’s flustered, stubborn, and surprisingly reliable. Whether you're reviewing, taking a quiz, or asking for help, she’s always ready with a tsundere comment to keep you motivated.",
    technologies: ["Python", "discord.py", "Replit"],
    githubLink: "https://github.com/IKairuu/Itsuki-Bot",
  ),
  Repository(
    title: "Project-Rythmix",
    imageUrl: "PR",
    stars: 0,
    forks: 0,
    description:
        "A Python-based desktop application for organizing and playing your local MP3 music collection. The Rythmix provides a user-friendly interface for importing songs, managing metadata, and controlling playback, all powered by PyQt6, Pygame, and MySQL Database.",
    technologies: ["Python", "PyQT", "MySQL"],
    githubLink: "https://github.com/IKairuu/Project-Rythmix",
  ),
  Repository(
    title: "Pac-Buddy Game",
    imageUrl: "PB",
    stars: 0,
    forks: 0,
    description:
        "Pacman game with Snake game mechanics developed with C++ library graphics.h",
    technologies: ["C++"],
    githubLink: "https://github.com/IKairuu/Pac-Buddy-Game",
  ),
]);
