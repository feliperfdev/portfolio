import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final class SocialViewModel {
  List get socialList => [
    (icon: AkarIcons.github_fill, url: 'https://github.com/feliperfdev'),
    (
      icon: AkarIcons.instagram_fill,
      url: 'https://www.instagram.com/feliper.tech/',
    ),
    (
      icon: AkarIcons.linkedin_fill,
      url: 'https://www.linkedin.com/in/feliperdev/',
    ),
  ];

  Future<void> accessSocial(String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
