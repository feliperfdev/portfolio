import 'tech.dart';

final class Experience {
  final String titleKey;
  final String locationKey;
  final String dateKey;
  final String descriptionKey;
  final List<Tech>? techs;

  Experience({
    required this.titleKey,
    required this.locationKey,
    required this.dateKey,
    required this.descriptionKey,
    this.techs,
  });
}
