import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            FlutterI18n.translate(context, 'footer.copyright', translationParams: {'year': DateTime.now().year.toString()}),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
