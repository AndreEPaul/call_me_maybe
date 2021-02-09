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

const profilePic = Image(
  image: NetworkImage('https://1.bp.blogspot.com/-WT2mY0rIVDo/WnJyJ554ojI/AAAAAAAAC4c/uljObUd7dAwoxffuVTgc4DWfTos7nLi_ACLcBGAs/s320/Snapshot%2B-%2B15.png')
);

class BusinessCard extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        // TODO: potential centering issue, but this is possibly just on web
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: profilePic,
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
      ),
    );
  }
}
