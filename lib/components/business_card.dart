import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

class BusinessCard extends StatelessWidget {
  final _mainAlign = MainAxisAlignment.center;
  final _crossAlign = CrossAxisAlignment.center;
  final _padding = const EdgeInsets.all(8);
  @override
  Widget build(BuildContext context) {
    if (!isLandscape(context)) {
      return FractionallySizedBox(
        widthFactor: 0.9,
        heightFactor: 0.9,
        child: Padding(
            padding: EdgeInsets.all(padding(context)),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: _mainAlign,
                    crossAxisAlignment: _crossAlign,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 250,
                        child: Image.asset('assets/callmemaybe.png'),
                      ),
                      Padding(
                          padding: _padding,
                          child: const Text('Andre Paul',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))),
                      Padding(
                          padding: _padding,
                          child: const Text('Software Engineer')),
                      Padding(
                          padding: _padding,
                          child: const ElevatedButton(
                              onPressed: _launchTextMsg,
                              child: Text('(555)-123-4567'))),
                      Padding(
                          padding: _padding,
                          child: const ElevatedButton(
                              onPressed: _launchGithub,
                              child: Text('GitHub Profile'))),
                      Padding(
                          padding: _padding,
                          child: const Text('example@email.com')),
                    ]),
              ),
            )),
      );
    } else {
      return FractionallySizedBox(
        widthFactor: 0.9,
        heightFactor: 0.9,
        child: Padding(
            padding: EdgeInsets.all(padding(context)),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: Row(
                    mainAxisAlignment: _mainAlign,
                    crossAxisAlignment: _crossAlign,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset('assets/callmemaybe.png'),
                      ),
                      Column(children: [
                        Padding(
                            padding: _padding,
                            child: const Text('Andre Paul',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))),
                        Padding(
                            padding: _padding,
                            child: const Text('Software Engineer'))
                      ]),
                      Column(children: [
                        Padding(
                            padding: _padding,
                            child: const ElevatedButton(
                                onPressed: _launchTextMsg,
                                child: Text('(555)-123-4567'))),
                        Padding(
                            padding: _padding,
                            child: const ElevatedButton(
                                onPressed: _launchGithub,
                                child: Text('GitHub Profile'))),
                        Padding(
                            padding: _padding,
                            child: const Text('example@email.com'))
                      ]),
                    ]),
              ),
            )),
      );
    }
  }
}

double padding(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return MediaQuery.of(context).size.width * 0.05;
  } else {
    return MediaQuery.of(context).size.width * 0.1;
  }
}

bool isLandscape(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return true;
  } else {
    return false;
  }
}
