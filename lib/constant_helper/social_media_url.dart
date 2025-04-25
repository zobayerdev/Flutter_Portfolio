// ignore_for_file: prefer_const_declarations, unused_element

import 'package:url_launcher/url_launcher.dart';

final String twitterProfileUrl = 'https://twitter.com/your_twitter_handle';
final String facebookProfileUrl =
    'https://www.facebook.com/zobayer.hasan.nayem';

Future<void> _launchTwitter() async {
  final Uri uri = Uri.parse(twitterProfileUrl);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $twitterProfileUrl');
  }
}

Future<void> _launchFacebook() async {
  final Uri uri = Uri.parse(facebookProfileUrl);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $twitterProfileUrl');
  }
}
