import 'package:flutter/material.dart';

import 'utils/widgets/fade_widget.dart';

class FadedGlowBgWidget extends StatelessWidget {
  const FadedGlowBgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: .6,
        child: FadedWidget(
          child: Container(
            height: MediaQuery.sizeOf(context).height * .8,
            width: MediaQuery.sizeOf(context).width * .6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff4E3EE6),
                  Color(0xff8E6BDA),
                  Color(0xffBD66B0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
