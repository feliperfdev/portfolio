import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/scripts/mobile_responsive.dart';
import '../view_model/tech_view_model.dart';

class TechSection extends StatefulWidget {
  const TechSection({super.key});

  @override
  State<TechSection> createState() => _TechSectionState();
}

class _TechSectionState extends State<TechSection> {
  final techVM = TechViewModel();

  String? _hoveredTech;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: isMobileScreen(context) ? 20 : 30),
      child: Column(
        children: [
          Center(
            child: Text(
              FlutterI18n.translate(context, 'sections.technologies'),
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 800,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: (techVM.techList.where((t) => t.hasImage)).length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobileScreen(context) ? 4 : 8,
                childAspectRatio: 4,
                mainAxisSpacing: 28,
              ),
              itemBuilder: (_, index) {
                final tech = (techVM.techList
                    .where((t) => t.hasImage)
                    .toList())[index];

                final hovered = _hoveredTech == tech.name;

                return Tooltip(
                  message: tech.name,
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        _hoveredTech = tech.name;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _hoveredTech = null;
                      });
                    },
                    child: AnimatedContainer(
                      transform: isMobileScreen(context)
                          ? null
                          : (hovered
                                ? (Matrix4.identity()
                                    ..scaleByDouble(1.1, 1.1, 1.1, 1.1)
                                    ..rotateZ(3.14 * 80))
                                : Matrix4.identity()),
                      duration: const Duration(
                        milliseconds: 300,
                      ), // Animation duration
                      curve: Curves.easeOut,
                      child: tech.isSvg
                          ? SvgPicture.asset(tech.image!, fit: BoxFit.contain)
                          : Image.asset(tech.image!, fit: BoxFit.contain),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
