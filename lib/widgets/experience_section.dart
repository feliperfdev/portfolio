import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../utils/scripts/mobile_responsive.dart';
import '../view_model/experiences_view_model.dart';

class ExperienceSection extends StatefulWidget {
  const ExperienceSection({super.key});

  @override
  State<ExperienceSection> createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
  final experienceVM = ExperiencesViewModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: isMobileScreen(context) ? 20 : 30),
      child: Column(
        children: [
          Center(
            child: Text(
              FlutterI18n.translate(context, 'sections.experiences'),
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          SelectionArea(
            child: Column(
              children: [
                ...experienceVM.experiences.map(
                  (experience) => SizedBox(
                    width: 750,
                    child: ListTile(
                      isThreeLine: true,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${FlutterI18n.translate(context, experience.titleKey)}  |  ${FlutterI18n.translate(context, experience.locationKey)}',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            FlutterI18n.translate(context, experience.dateKey),
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        FlutterI18n.translate(context, experience.descriptionKey),
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.grey[400], fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
