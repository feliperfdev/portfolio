import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../utils/scripts/mobile_responsive.dart';
import '../view_model/home_view_model.dart';
import 'social_info_widget.dart';

class MobileMainInfo extends StatelessWidget {
  final HomeViewModel viewModel;
  final GlobalKey projectsKey;

  const MobileMainInfo({
    super.key,
    required this.viewModel,
    required this.projectsKey,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/profile.jpg',
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(height: 20),
          SelectionArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text.rich(
                    TextSpan(
                      text: FlutterI18n.translate(context, 'hero.greeting'),
                      style: textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(3, 7),
                            blurStyle: BlurStyle.outer,
                            spreadRadius: .5,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      children: [
                        TextSpan(
                          text: '${FlutterI18n.translate(context, 'hero.name')}\n',
                          style: textTheme.titleLarge?.copyWith(
                            color: Color(0xff6062D5),
                            shadows: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(3, 7),
                                blurStyle: BlurStyle.outer,
                                spreadRadius: .5,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                        ),
                        TextSpan(
                          text: FlutterI18n.translate(context, 'hero.and'),
                          style: textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: FlutterI18n.translate(context, 'hero.role'),
                          style: textTheme.titleLarge?.copyWith(
                            color: Color(0xff6062D5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .9,
                  child: Text(
                    FlutterI18n.translate(context, 'hero.description'),
                    maxLines: 4,
                    style: textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: isMobileScreen(context) ? 30 : 120),
                SocialInfoWidget(
                  margin: 30,
                  iconSpacing: 16,
                  onSeeProjectsTap: () async {
                    await viewModel.scrollTo(size: size, key: projectsKey);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
