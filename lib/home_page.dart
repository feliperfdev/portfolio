import 'package:flutter/material.dart';

import 'faded_glow_bg_widget.dart';
import 'utils/scripts/mobile_responsive.dart';
import 'widgets/desktop_main_info.dart';
import 'widgets/mobile_main_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 20,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: size.height * (isMobileScreen(context) ? .03 : .05),
            ),
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

                Column(
                  children: [
                    !isMobileScreen(context)
                        ? const DesktopMainInfo()
                        : const MobileMainInfo(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
