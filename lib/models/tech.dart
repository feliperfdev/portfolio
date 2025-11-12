import 'package:flutter/material.dart';

final class Tech {
  final String name;
  final Color? color;
  final String? image;

  Tech({required this.name, this.color, this.image});

  bool get hasImage => image != null;

  bool get isSvg => hasImage && name.split('.').last.toLowerCase() == 'svg';
}
