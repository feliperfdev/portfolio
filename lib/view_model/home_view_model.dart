// ignore: deprecated_member_use, avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:http/http.dart';

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

  Future<void> downloadCurriculum() async {
    try {
      final fileData = (await get(
        Uri.parse(
          'https://raw.githubusercontent.com/feliperfdev/feliperfdev/refs/heads/main/assets/Curr%C3%ADculo%20-%20Felipe%20Ribeiro.pdf',
        ),
      )).bodyBytes;

      // Create blob from image data
      final blob = html.Blob([fileData]);
      final url = html.Url.createObjectUrlFromBlob(blob);

      // Create download link
      html.AnchorElement(href: url)
        ..setAttribute('download', 'curriculo_felipe_ribeiro.pdf')
        ..click();

      // Clean up
      html.Url.revokeObjectUrl(url);
    } catch (_) {}
  }
}
