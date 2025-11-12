import 'package:flutter/material.dart';

import '../utils/scripts/mobile_responsive.dart';
import '../view_model/projects_view_model.dart';
import 'mobile_project_card.dart';
import 'project_card.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final projectsVM = ProjectsViewModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: isMobileScreen(context) ? 20 : 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Projetos',
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Wrap(
              direction: isMobileScreen(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              spacing: isMobileScreen(context) ? 0 : 20,
              children: [
                ...List.generate(projectsVM.projects.length, (i) {
                  final project = projectsVM.projects[i];

                  return isMobileScreen(context)
                      ? MobileProjectCard(project: project)
                      : ProjectCard(project: project);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
