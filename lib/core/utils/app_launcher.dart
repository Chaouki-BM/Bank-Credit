import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class AppLauncher {
  static Future<void> callPhone(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      print("Cannot launch phone call");
    }
  }

  static Future<void> openWebsite(String url) async {
    final Uri uri = Uri.parse(url);

    try {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (e) {
      print("Could not open website: $url, error: $e");
    }
  }
}
