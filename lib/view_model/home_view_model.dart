import 'package:flutter/material.dart';

enum Section {
  info(position: 0),
  projects(position: .5),
  contacts(position: 1);

  final double position;

  const Section({required this.position});
}

final class HomeViewModel {
  final scroll = ScrollController();

  Future<void> scrollTo(Section section, {required Size size}) async {
    await scroll.animateTo(
      size.height * section.position,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }
}
