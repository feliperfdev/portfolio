import 'package:flutter/material.dart';

bool isMobileScreen(BuildContext context) =>
    MediaQuery.sizeOf(context).width <= 800;
