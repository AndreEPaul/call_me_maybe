import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopOfResume(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
        WorkExperience(),
      ],
    )));
  }
}

class TopOfResume extends StatelessWidget {
  final _padding = const EdgeInsets.all(5);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: _padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
                padding: _padding,
                child: const Text('Andre Paul',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            Padding(padding: _padding, child: const Text('example@email.com')),
            Padding(
                padding: _padding, child: const Text('github.com/AndreEPaul')),
          ],
        ));
  }
}

class WorkExperience extends StatelessWidget {
  final _padding = const EdgeInsets.all(5);
  final _rowPadding = const EdgeInsets.fromLTRB(15, 2, 15, 2);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: _padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
                padding: _padding,
                child: const Text(
                  'Software Engineer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: _padding,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(padding: _rowPadding, child: const Text('Xandr')),
                    Padding(
                        padding: _rowPadding,
                        child: const Text('March 2021-Present')),
                    Padding(
                        padding: _rowPadding,
                        child: const Text('Portland, OR')),
                  ],
                )),
            Padding(
                padding: _padding,
                child: const Text(
                    'Front end software engineering for programmatic ad-tech. Tech used: React, redux, typescript, javascript, graphql, jest, enzyme, node, git.'))
          ],
        ));
  }
}
