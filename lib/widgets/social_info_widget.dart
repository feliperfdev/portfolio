import 'package:flutter/material.dart';

import '../view_model/social_view_model.dart';

class SocialInfoWidget extends StatefulWidget {
  final double iconSpacing;
  final double margin;

  const SocialInfoWidget({
    super.key,
    required this.iconSpacing,
    required this.margin,
  });

  @override
  State<SocialInfoWidget> createState() => _SocialInfoWidgetState();
}

class _SocialInfoWidgetState extends State<SocialInfoWidget> {
  final viewModel = SocialViewModel();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () {},
          label: Text('Ver projetos', style: TextStyle(color: Colors.white)),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
          ),
          icon: Icon(Icons.precision_manufacturing, color: Colors.white),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: widget.margin),
          height: 28,
          width: 2,
          color: Colors.white,
        ),
        for (final social in viewModel.socialList) ...[
          IconButton(
            onPressed: () async {
              await viewModel.accessSocial(social.url);
            },
            icon: Icon(social.icon, color: Colors.white),
          ),
          SizedBox(width: widget.iconSpacing),
        ],
      ],
    );
  }
}
