import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../view_model/social_view_model.dart';

class SocialInfoWidget extends StatefulWidget {
  final double iconSpacing;
  final double margin;
  final VoidCallback onSeeProjectsTap;

  const SocialInfoWidget({
    super.key,
    required this.iconSpacing,
    required this.margin,
    required this.onSeeProjectsTap,
  });

  @override
  State<SocialInfoWidget> createState() => _SocialInfoWidgetState();
}

class _SocialInfoWidgetState extends State<SocialInfoWidget> {
  final viewModel = SocialViewModel();

  String? socialUrlHovered;
  bool seeProjectsHovered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (_) => setState(() => seeProjectsHovered = true),
          onExit: (_) => setState(() => seeProjectsHovered = false),
          child: TextButton.icon(
            onPressed: widget.onSeeProjectsTap,
            label: Text(
              'Ver projetos',
              style: TextStyle(
                color: seeProjectsHovered ? Color(0xff4E3EE6) : Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),
              side: WidgetStatePropertyAll(
                BorderSide(
                  color: seeProjectsHovered ? Color(0xff4E3EE6) : Colors.white,
                ),
              ),
            ),
            icon: Icon(
              AkarIcons.planet,
              color: seeProjectsHovered ? Color(0xff4E3EE6) : Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: widget.margin),
          height: 28,
          width: 2,
          color: Colors.white,
        ),
        for (final social in viewModel.socialList) ...[
          MouseRegion(
            onEnter: (_) => setState(() => socialUrlHovered = social.url),
            onExit: (_) => setState(() => socialUrlHovered = null),
            child: IconButton(
              onPressed: () async {
                await viewModel.accessSocial(social.url);
              },
              icon: Icon(
                social.icon,
                color: socialUrlHovered == social.url
                    ? Color(0xff4E3EE6)
                    : Colors.white,
              ),
            ),
          ),
          SizedBox(width: widget.iconSpacing),
        ],
      ],
    );
  }
}
