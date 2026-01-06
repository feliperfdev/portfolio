import 'package:flutter/material.dart';

import '../models/project.dart';
import '../models/tech.dart';

final class ProjectsViewModel {
  final projects = <Project>[
    Project(
      nameKey: 'projects.keeplinked.name',
      descriptionKey: 'projects.keeplinked.description',
      imagePath: 'assets/images/keeplinked.png',
      url: 'https://keeplinks.in',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'Typescript', color: Colors.blueAccent),
      ],
    ),
    Project(
      nameKey: 'projects.aibum.name',
      descriptionKey: 'projects.aibum.description',
      imagePath: 'assets/images/aibum.png',
      url: 'https://aibum.app',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'Typescript', color: Colors.blueAccent),
      ],
    ),
    Project(
      nameKey: 'projects.financetracker.name',
      descriptionKey: 'projects.financetracker.description',
      imagePath: 'assets/images/financetracker.jpg',
      url: '',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'AWS', color: const Color.fromARGB(255, 212, 162, 11)),
        Tech(name: 'Typescript', color: Colors.blueAccent),
      ],
    ),
    Project(
      nameKey: 'projects.wanderlevel.name',
      descriptionKey: 'projects.wanderlevel.description',
      imagePath: 'assets/images/wanderlevel.png',
      url: '',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'Supabase', color: const Color(0xff3ECF8E)),
      ],
    ),
  ];
}
