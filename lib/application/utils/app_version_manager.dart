import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class AppVersionManager {
  static Future<void> launchURL() async {
    String url;

    if (Platform.isAndroid) {
      url =
          'https://play.google.com/store/apps/details?id=com.fitsqaud.fistkim.fitsquad_app';
    } else if (Platform.isIOS) {
      url = 'https://apps.apple.com/app/id6462024031';
    } else {
      throw 'Unsupported platform'; // 지원되지 않는 플랫폼
    }

    final Uri parsedUrl = Uri.parse(url);
    if (!await launchUrl(parsedUrl)) {
      throw Exception('Could not launch $parsedUrl');
    }
  }
}
