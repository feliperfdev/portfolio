import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/project.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return MouseRegion(
      onEnter: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: SelectionArea(
        child: InkWell(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          onTap: () async {
            final uri = Uri.parse(widget.project.url);

            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          child: Container(
            height: size.height * .3,
            width: size.width * .38,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xff1B1B1B).withValues(alpha: hovered ? 1 : .4),
              borderRadius: BorderRadius.circular(6),
              boxShadow: hovered
                  ? [
                      BoxShadow(
                        color: Color(0xff4E3EE6),
                        spreadRadius: 2,
                        blurRadius: 3,
                      ),
                    ]
                  : null,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FlutterI18n.translate(context, widget.project.nameKey),
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 119, 105, 245),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        FlutterI18n.translate(context, widget.project.descriptionKey),
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 18),
                Flexible(
                  child: Container(
                    height: 180,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                      image: widget.project.imagePath.isNotEmpty
                          ? DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(widget.project.imagePath),
                            )
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
