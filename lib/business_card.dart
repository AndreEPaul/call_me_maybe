import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// final Uri _linkGithub = Uri(
//   scheme: 'https',
//   path: 'github.com/AndreEPaul',
// );

_launchURL() async {
  const url = 'https://github.com/AndreEPaul';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Cant launch $url';
  }
}

class BusinessCard extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
        body: Column(
      children: [
        Placeholder(
          fallbackHeight: 100.0,
          fallbackWidth: 10.0,
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Andre Paul',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ))),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Software Engineer')),
        Padding(
          //TODO: change this to redirect to SMS message
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('555-555-5555')),
        ElevatedButton(
          onPressed: _launchURL, 
          child: Text('GitHub Profile')
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('example@email.com')),
      ],
    ));
  }
}
