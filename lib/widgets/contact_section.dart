import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/scripts/mobile_responsive.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _contentController = TextEditingController();
  final _subjectController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _subjectController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  Future<void> _sendEmail() async {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text;
      final content = _contentController.text;
      final subject = Uri.encodeComponent(_subjectController.text);
      final mailto = Uri.parse(
        'mailto:feliper.dev@gmail.com?subject=$subject&body=$content%20-%20Email:%20$email',
      );

      if (await canLaunchUrl(mailto)) {
        await launchUrl(mailto);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobile = isMobileScreen(context);
    final size = MediaQuery.sizeOf(context);

    return Container(
      margin: EdgeInsets.only(
        left: isMobile ? 16 : size.width * .1,
        right: isMobile ? 16 : size.width * .1,
        bottom: 70,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FlutterI18n.translate(context, 'contact.title'),
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Form(
            key: _formKey,
            child: Column(
              spacing: 16,
              children: [
                TextFormField(
                  controller: _contentController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(AkarIcons.chat_dots, color: Colors.white),
                    labelText: FlutterI18n.translate(context, 'contact.subject'),
                    labelStyle: const TextStyle(color: Colors.white70),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: theme.primaryColor),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red[800]!),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return FlutterI18n.translate(context, 'contact.validation.subjectRequired');
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(AkarIcons.envelope, color: Colors.white),
                    labelText: FlutterI18n.translate(context, 'contact.email'),
                    labelStyle: const TextStyle(color: Colors.white70),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: theme.primaryColor),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red[800]!),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return FlutterI18n.translate(context, 'contact.validation.emailRequired');
                    }
                    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+').hasMatch(value)) {
                      return FlutterI18n.translate(context, 'contact.validation.emailInvalid');
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _subjectController,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 5,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    labelText: FlutterI18n.translate(context, 'contact.message'),
                    labelStyle: const TextStyle(color: Colors.white70),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: theme.primaryColor),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red[800]!),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return FlutterI18n.translate(context, 'contact.validation.messageRequired');
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async => await _sendEmail(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4E3EE6),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      FlutterI18n.translate(context, 'contact.send'),
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
