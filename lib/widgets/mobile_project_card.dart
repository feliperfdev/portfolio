import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/project.dart';

class MobileProjectCard extends StatefulWidget {
  final Project project;

  const MobileProjectCard({super.key, required this.project});

  @override
  State<MobileProjectCard> createState() => _MobileProjectCardState();
}

class _MobileProjectCardState extends State<MobileProjectCard> {
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
            height: size.height * .4,
            width: size.width * .9,
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
            child: Column(
              children: [
                Flexible(
                  child: Container(
                    height: 190,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                      image: widget.project.imagePath.isNotEmpty
                          ? DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(widget.project.imagePath),
                            )
                          : null,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.project.name,
                        textScaler: TextScaler.linear(size.width * .0016),
                        style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 119, 105, 245),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.project.description,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
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
