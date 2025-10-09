import 'package:flutter/material.dart';

import 'faded_glow_bg_widget.dart';
import 'utils/scripts/mobile_responsive.dart';
import 'view_model/home_view_model.dart';
import 'widgets/desktop_main_info.dart';
import 'widgets/mobile_main_info.dart';
import 'widgets/projects_section.dart';
import 'widgets/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeVM = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: isMobileScreen(context) ? 10 : 20,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: size.height * (isMobileScreen(context) ? .03 : .05),
            ),
            TextButton(
              onPressed: () async =>
                  await homeVM.scrollTo(Section.info, size: size),
              child: Text('Início', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () async =>
                  await homeVM.scrollTo(Section.projects, size: size),
              child: Text('Projetos', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () async =>
                  await homeVM.scrollTo(Section.contacts, size: size),
              child: Text('Contato', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          const FadedGlowBgWidget(),
          SingleChildScrollView(
            controller: homeVM.scroll,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                !isMobileScreen(context)
                    ? DesktopMainInfo(viewModel: homeVM)
                    : MobileMainInfo(viewModel: homeVM),
                const ProjectsSection(),
                const ContactSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
