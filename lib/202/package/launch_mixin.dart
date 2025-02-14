import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin{
  Future<void> launchMyUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await canLaunchUrl(uri)) { 
      throw Exception('Could not launch $url');
    } 

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
