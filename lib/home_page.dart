import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'faded_glow_bg_widget.dart';
import 'utils/scripts/mobile_responsive.dart';
import 'view_model/home_view_model.dart';
import 'widgets/desktop_main_info.dart';
import 'widgets/experience_section.dart';
import 'widgets/footer.dart';
import 'widgets/mobile_main_info.dart';
import 'widgets/projects_section.dart';
import 'widgets/contact_section.dart';
import 'widgets/tech_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeVM = HomeViewModel();
  final initialKey = GlobalKey();
  final projectsKey = GlobalKey();
  final experienceKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      floatingActionButton: isMobileScreen(context)
          ? const SizedBox.shrink()
          : AnimatedBuilder(
              animation: homeVM.scroll,
              builder: (context, _) {
                if (homeVM.scroll.offset > size.height * .98) {
                  return FloatingActionButton(
                    onPressed: () async =>
                        await homeVM.scrollTo(size: size, key: initialKey),
                    backgroundColor: Color(0xff4E3EE6),
                    child: Icon(AkarIcons.chevron_up, color: Colors.white),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
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
                  await homeVM.scrollTo(size: size, key: initialKey),
              child: Text('Início', style: TextStyle(color: Colors.white)),
            ),
            if (!isMobileScreen(context)) ...[
              TextButton(
                onPressed: () async =>
                    await homeVM.scrollTo(size: size, key: projectsKey),
                child: Text('Projetos', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () async =>
                    await homeVM.scrollTo(size: size, key: experienceKey),
                child: Text(
                  'Experiências',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            TextButton(
              onPressed: () async =>
                  await homeVM.scrollTo(size: size, key: contactKey),
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
                    ? DesktopMainInfo(
                        key: initialKey,
                        projectsKey: projectsKey,
                        viewModel: homeVM,
                      )
                    : MobileMainInfo(
                        key: initialKey,
                        projectsKey: projectsKey,
                        viewModel: homeVM,
                      ),
                ProjectsSection(key: projectsKey),
                ExperienceSection(key: experienceKey),
                const TechSection(),
                ContactSection(key: contactKey),
                const Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
