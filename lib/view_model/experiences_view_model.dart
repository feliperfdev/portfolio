import '../models/experience.dart';

final class ExperiencesViewModel {
  final experiences = <Experience>[
    Experience(
      titleKey: 'experiences.petize.title',
      locationKey: 'experiences.petize.location',
      dateKey: 'experiences.petize.date',
      descriptionKey: 'experiences.petize.description',
    ),
    Experience(
      titleKey: 'experiences.fteam.title',
      locationKey: 'experiences.fteam.location',
      dateKey: 'experiences.fteam.date',
      descriptionKey: 'experiences.fteam.description',
    ),
    Experience(
      titleKey: 'experiences.ommed.title',
      locationKey: 'experiences.ommed.location',
      dateKey: 'experiences.ommed.date',
      descriptionKey: 'experiences.ommed.description',
    ),
  ];
}
