import 'tech.dart';

final class Experience {
  final String title;
  final String location;
  final String date;
  final String description;
  final List<Tech>? techs;

  Experience({
    required this.title,
    required this.location,
    required this.date,
    required this.description,
    this.techs,
  });
}
