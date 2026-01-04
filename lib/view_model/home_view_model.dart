// ignore: deprecated_member_use, avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:http/http.dart';

final class HomeViewModel {
  final scroll = ScrollController();

  Future<void> scrollTo({required Size size, required GlobalKey key}) async {
    await Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  Future<void> downloadCurriculum() async {
    try {
      final fileData = (await get(
        Uri.parse(
          'https://raw.githubusercontent.com/feliperfdev/feliperfdev/refs/heads/main/cv/cv_ptbr.pdf',
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
