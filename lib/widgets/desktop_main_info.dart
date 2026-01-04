import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import '../view_model/home_view_model.dart';
import 'social_info_widget.dart';

class DesktopMainInfo extends StatelessWidget {
  final HomeViewModel viewModel;
  final GlobalKey projectsKey;

  const DesktopMainInfo({
    super.key,
    required this.viewModel,
    required this.projectsKey,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final size = MediaQuery.sizeOf(context);

    return Container(
      margin: EdgeInsets.only(top: size.height * .1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/profile.jpg',
              height: 320,
              width: 320,
            ),
          ),
          const SizedBox(width: 20),
          SelectionArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
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
                const SizedBox(height: 12),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .43,
                  child: Text(
                    FlutterI18n.translate(context, 'hero.description'),
                    maxLines: 4,
                    style: textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 120),
                SocialInfoWidget(
                  margin: 60,
                  iconSpacing: 24,
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
