import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// final Uri _linkGithub = Uri(
//   scheme: 'https',
//   path: 'github.com/AndreEPaul',
// );

Future _launchGithub() async {
  const url = 'https://github.com/AndreEPaul';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Cant launch $url';
  }
}

Future _launchTextMsg() async {
  const url = 'sms:5551234567';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Cant launch $url';
  }
}

const profilePic = Image(
    image: NetworkImage(
        'https://1.bp.blogspot.com/-WT2mY0rIVDo/WnJyJ554ojI/AAAAAAAAC4c/uljObUd7dAwoxffuVTgc4DWfTos7nLi_ACLcBGAs/s320/Snapshot%2B-%2B15.png'));

class BusinessCard extends StatelessWidget {
  final _padding = const EdgeInsets.all(10);
  final _mainAlign = MainAxisAlignment.center;
  final _crossAlign = CrossAxisAlignment.center;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // TODO: potential centering issue, but this is possibly just on web
        mainAxisAlignment: _mainAlign,
        crossAxisAlignment: _crossAlign,
        children: [
          Padding(
            padding: _padding,
            child: profilePic,
          ),
          Padding(
              padding: _padding,
              child: const Text('Andre Paul',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ))),
          Padding(padding: _padding, child: const Text('Software Engineer')),
          Padding(
              //TODO: change this to redirect to SMS message
              padding: _padding,
              child: const ElevatedButton(
                  onPressed: _launchTextMsg, child: Text('(555)-123-4567'))),
          Padding(
            padding: _padding,
            child: Row(
              mainAxisAlignment: _mainAlign,
              children: [
                const ElevatedButton(
                    onPressed: _launchGithub, child: Text('GitHub Profile')),
                Padding(
                    padding: _padding, child: const Text('example@email.com')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
