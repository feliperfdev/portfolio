import 'package:flutter/material.dart';

import 'utils/widgets/fade_widget.dart';

class FadedGlowBgWidget extends StatelessWidget {
  const FadedGlowBgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Opacity(
        opacity: .5,
        child: FadedWidget(
          child: Container(
            height: MediaQuery.sizeOf(context).height * .6,
            width: MediaQuery.sizeOf(context).width * .4,
            decoration: BoxDecoration(
              border: BoxBorder.all(
                width: 0,
                color: Colors.transparent,
                style: BorderStyle.none,
              ),
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
