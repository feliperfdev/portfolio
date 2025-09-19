import 'tech.dart';

final class Project {
  final String name;
  final String description;
  final String imagePath;
  final String url;
  final List<Tech> techList;

  Project({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.url,
    required this.techList,
  });
}
