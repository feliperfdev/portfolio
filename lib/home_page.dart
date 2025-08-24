import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'faded_glow_bg_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 20,
          children: [
            Image.asset('assets/images/logo.png', height: size.height * .05),
            TextButton(
              onPressed: () {},
              child: Text('Início', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Projetos', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Contatos', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const FadedGlowBgWidget(),

                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/profile.jpg',
                              height: size.height * .36,
                              width: size.width * .2,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: 'Olá, eu sou o ',
                                  style: textTheme.titleLarge?.copyWith(
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(3, 7),
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
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * .46,
                                child: Text(
                                  'Iniciei como Desenvolvedor Mobile e hoje atuo como fullstack em meus próprios projetos. Sou apaixonado por tecnologia e inovação, buscando por novas experiências trabalhando em projetos pessoais e buscando desenvolver soluções inovadoras.',
                                  maxLines: 4,
                                  style: textTheme.displayMedium?.copyWith(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            label: Text(
                              'Ver projetos',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.black,
                              ),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              side: WidgetStatePropertyAll(
                                BorderSide(color: Colors.white),
                              ),
                            ),
                            icon: Icon(
                              Icons.precision_manufacturing,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 60),
                            height: 28,
                            width: 2,
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              AkarIcons.github_fill,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 24),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              AkarIcons.instagram_fill,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 24),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              AkarIcons.linkedin_fill,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
