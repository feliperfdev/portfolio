import 'tech.dart';

final class Project {
  final String nameKey;
  final String descriptionKey;
  final String imagePath;
  final String url;
  final List<Tech> techList;

  Project({
    required this.nameKey,
    required this.descriptionKey,
    required this.imagePath,
    required this.url,
    required this.techList,
  });
}
