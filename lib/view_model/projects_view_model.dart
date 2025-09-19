import 'package:flutter/material.dart';

import '../models/project.dart';
import '../models/tech.dart';

final class ProjectsViewModel {
  List<Project> projects = [
    Project(
      name: 'KeepLinked',
      description:
          'Tenha todos os seus links organizados em pastas personalizadas, com tags e privacidade. Salve, encontre e acesse rapidamente tudo o que é importante para você, de qualquer lugar e a qualquer momento. Simples, seguro e do seu jeito.',
      imagePath: 'assets/images/keeplinked.png',
      url: 'https://keeplinks.in',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'Typescript', color: Colors.blueAccent),
      ],
    ),
    Project(
      name: 'Aibum',
      description:
          'Com o Aibum você pode enviar imagens e receber versões em contorno, prontas para colorir. Ideal para presentes, diversão, terapia ou pura criatividade.',
      imagePath: 'assets/images/aibum.png',
      url: 'https://aibum.app',
      techList: [],
    ),
    Project(
      name: 'FinanceTracker',
      description:
          'O FinanceTracker é um app para registrar receitas e despesas e ter uma visão clara da sua balança financeira pessoal.',
      imagePath: 'assets/images/financetracker.jpg',
      url: '',
      techList: [],
    ),
  ];
}
