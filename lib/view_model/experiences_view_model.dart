import '../models/experience.dart';

final class ExperiencesViewModel {
  final experiences = <Experience>[
    Experience(
      title: 'Desenvolvedor de Aplicativos',
      location: 'Petize',
      date: '01/2023 - 01/2025',
      description:
          '''Na Petize, atuei no desenvolvimento de aplicativos móveis com Flutter, aplicando práticas de TDD, BDD e Clean Code. Trabalhei com gerenciamento de rotas e injeção de dependências via Flutter Modular, BLoC para controle de estado, consumo de APIs e integração com Firebase Realtime Database. Também participei de processos de internacionalização, garantia de qualidade com SonarQube, animações com Slivers e uso de metodologias ágeis com Jira, além de realizar revisões de código e colaborar na melhoria contínua das entregas.''',
    ),
    Experience(
      title: 'Desenvolvedor de Aplicativos',
      location: 'FTeam',
      date: '12/2021 - 03/2022',
      description:
          '''Na Fteam, atuei como desenvolvedor mobile com Flutter, aplicando princípios de SOLID, Clean Architecture e diversos padrões de projeto e de gerenciamento de estado (BLoC, Cubit, Triple, SSP). Desenvolvi componentes customizados com CustomClipper e CustomPainter, realizei consumo de APIs REST, testes de unidade e participei de decisões técnicas sobre pacotes, arquitetura e protótipos, em constante comunicação com o time de tecnologia e clientes para garantir soluções eficientes e bem estruturadas.''',
    ),
    Experience(
      title: 'Desenvolvedor de Aplicativos',
      location: 'Ommed',
      date: '03/2021 - 08/2021',
      description:
          '''O estágio no projeto Ommed foi essencial para meu aprimoramento em Dart e Flutter, proporcionando experiência prática com metodologias ágeis, arquitetura limpa e integração de microsserviços. Atuei no desenvolvimento do aplicativo mobile para Android e iOS, participei de decisões técnicas e de design, realizei migrações e integrações com APIs via gRPC, utilizei Git e Gitflow para versionamento, implementei o padrão MVVM com MobX e Flutter Modular, além de contribuir para a evolução contínua do projeto e da equipe.''',
    ),
  ];
}
