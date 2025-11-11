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
          'Envie imagens e receba versões em contorno, prontas para colorir. Ideal para presentes, diversão, terapia ou pura criatividade.',
      imagePath: 'assets/images/aibum.png',
      url: 'https://aibum.app',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'Typescript', color: Colors.blueAccent),
      ],
    ),
    Project(
      name: 'FinanceTracker',
      description:
          'Registre receitas e despesas para ter uma visão clara da sua balança financeira pessoal.',
      imagePath: 'assets/images/financetracker.jpg',
      url: '',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'AWS', color: const Color.fromARGB(255, 212, 162, 11)),
        Tech(name: 'Typescript', color: Colors.blueAccent),
      ],
    ),
    Project(
      name: 'SetLift',
      description:
          'Converta PDFs e planilhas de treinos em componentes interativos para acompanhamento e análise de progresso em treinos fitness.',
      imagePath: 'assets/images/setlift.png',
      url: '',
      techList: [
        Tech(name: 'Flutter', color: Colors.blueAccent),
        Tech(name: 'Supabase', color: const Color.fromARGB(255, 73, 199, 73)),
        Tech(name: 'Typescript', color: Colors.blueAccent),
      ],
    ),
  ];
}
