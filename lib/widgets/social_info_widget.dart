import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../utils/scripts/mobile_responsive.dart';
import '../utils/widgets/custom_icon_hover_button.dart';
import '../view_model/home_view_model.dart';
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
  bool curriculumHovered = false;

  final homeVM = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: isMobileScreen(context)
          ? WrapAlignment.center
          : WrapAlignment.start,
      children: [
        CustomIconHoverButton(
          icon: AkarIcons.file,
          label: 'Curriculo',
          onTap: () async => await homeVM.downloadCurriculum(),
        ),
        const SizedBox(width: 12),
        CustomIconHoverButton(
          icon: AkarIcons.planet,
          label: 'Ver projetos',
          onTap: widget.onSeeProjectsTap,
        ),
        if (!isMobileScreen(context))
          Container(
            margin: EdgeInsets.symmetric(horizontal: widget.margin),
            height: 28,
            width: 2,
            color: Colors.white,
          )
        else
          SizedBox(width: double.maxFinite),
        for (final social in viewModel.socialList) ...[
          if (isMobileScreen(context)) const SizedBox(height: 16),
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
