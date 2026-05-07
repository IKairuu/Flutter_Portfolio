import 'package:flutter/material.dart';
import 'package:my_portfolio/models/repository.dart';
import 'package:my_portfolio/models/technology.dart';

ValueNotifier<List<Technology>> languages = ValueNotifier([
  Technology(
    name: "Python",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1280px-Python-logo-notext.svg.png",
  ),
  Technology(
    name: "Java",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIEj79-a0pk2kUNpSQvkwAwSswe2IpzKwIp29mdROYdA&s&ec=121633949",
  ),
  Technology(
    name: "C++",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsU0idp6ianF_4UlSYhbSNvHXz22bBkZSkA3623S6A8A&s&ec=121633949",
  ),
  Technology(
    name: "C#",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPuwI5ZZsaWVegj_ETBXqn5vdWEAK-s1mmwIrOY32l6A&s&ec=121633949",
  ),
  Technology(
    name: "Javascript",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
  ),
  Technology(
    name: "Dart",
    image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Dart_logo.png",
  ),
  Technology(
    name: "PHP",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1280px-PHP-logo.svg.png",
  ),
  Technology(
    name: "HTML",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-cg9uc0AZLlERYLVs9UY-i5BctfHVUtX5kQ&s",
  ),
  Technology(
    name: "CSS",
    image:
        "https://t3.ftcdn.net/jpg/05/15/64/02/360_F_515640293_nJo6TqIZqDNpKNTJ6Ufzuikmtq8VyNoV.jpg",
  ),
]);

ValueNotifier<List<Technology>> technologies = ValueNotifier([
  Technology(
    name: "Flutter",
    image: "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png",
  ),
  Technology(
    name: "Node.js",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgq-pSgV3rs-MN4jHtgGNqwRLcrAWp2bQOkA&s",
  ),
  Technology(
    name: "Express.js",
    image: "https://img.icons8.com/fluent/1200/express-js.jpg",
  ),
  Technology(
    name: "Firebase",
    image:
        "https://static.vecteezy.com/system/resources/previews/072/969/382/non_2x/firebase-logo-icon-high-resolution-free-vector.jpg",
  ),
  Technology(
    name: "MySQL",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc5niSKZpZhcw5Cxk4e5k_-_TNIeaRfu2fgw&s",
  ),
  Technology(
    name: "discord.py",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOAFlOp6DJnRMa8BoJE3EFnkiF46PZc8-Rsg&s",
  ),
  Technology(
    name: "SFML",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyVZB_XWqdHWKCYHHEs8IUVDXIHh4aHFDe1w&s",
  ),
  Technology(
    name: "PyQT",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDPmkKkLpr59Nbm9p6VU_fCX1g_ar7T3yiaw&s",
  ),
]);

ValueNotifier<List<Technology>> tools = ValueNotifier([
  Technology(
    name: "Postman",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJwbzJZ69SSTLQe8ySIgIMMB68JLukoIkJfQ&s",
  ),
  Technology(
    name: "Render",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpix2GnOWQeWgrpXRYDLC7yGaT5-aVg4UD8A&s",
  ),
  Technology(
    name: "Git",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/3840px-Git_icon.svg.png",
  ),
  Technology(
    name: "Replit",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/New_Replit_Logo.svg/3840px-New_Replit_Logo.svg.png",
  ),
]);

ValueNotifier<List<Repository>> repositories = ValueNotifier([
  Repository(
    title: "Project_Hakbang",
    imageUrl: "HA",
    stars: 0,
    forks: 1,
    description:
        "HAKBANG is an educational guidance platform designed to help Filipino senior high school students take the right hakbang toward making informed and strategic decisions as they prepare for higher education.",
    technologies: [
      "Flutter",
      "Dart",
      "Node.js",
      "Express.js",
      "Render",
      "Firebase",
      "Git",
      "Postman",
    ],
    githubLink: "https://github.com/IKairuu/Project_Hakbang",
  ),
]);
