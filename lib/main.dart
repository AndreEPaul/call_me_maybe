import 'package:flutter/material.dart';

import 'business_card.dart';
import 'predictor.dart';
import 'resume.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

/*
  This DefaultTabController implementation for
  the three tabs is found in the flutter official
  documentation/repo here 
  https://github.com/flutter/samples/blob/master/isolate_example/lib/main.dart
*/

class HomePage extends StatelessWidget {
  final String title = 'Call Me Maybe';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[400],
        accentColor: Colors.grey[500],
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.face),
                ),
                Tab(
                  icon: Icon(Icons.list),
                ),
                Tab(
                  icon: Icon(Icons.help),
                ),
              ],
            ),
            centerTitle: true,
            title: Text(this.title),
          ),
          body: TabBarView(
            children: [
              BusinessCard(),
              Resume(),
              Predictor(),
            ],
          ),
        ),
      ),
    );
  }
}
