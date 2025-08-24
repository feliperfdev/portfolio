import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'social_info_widget.dart';

class MobileMainInfo extends StatelessWidget {
  const MobileMainInfo({super.key});

  @override
  Widget build(BuildContext context) {
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
                      text: 'Olá, eu sou o ',
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
                          text: 'Felipe\n',
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
                          text: 'e sou ',
                          style: textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Desenvolvedor de Software',
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
                    'Iniciei como Desenvolvedor Mobile e hoje atuo como fullstack em meus próprios projetos. Sou apaixonado por tecnologia e inovação, buscando por novas experiências trabalhando em projetos pessoais e buscando desenvolver soluções inovadoras.',
                    maxLines: 4,
                    style: textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 120),
                const SocialInfoWidget(margin: 30, iconSpacing: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
