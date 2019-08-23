import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Launches External URL
void launchURL({@required url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}