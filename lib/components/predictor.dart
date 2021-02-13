import 'package:flutter/material.dart';

import '../models/predictor_data.dart';

class Predictor extends StatefulWidget {
  @override
  _PredictState createState() => _PredictState();
}

class _PredictState extends State<Predictor> {
  static final predictorData = PredictorData();
  final _mainAlign = MainAxisAlignment.center;
  final _crossAlign = CrossAxisAlignment.center;
  String currentPrediction = predictorData.pickPrediction();
  @override
  Widget build(BuildContext context) {
    if (!isLandscape(context)) {
      return FractionallySizedBox(
          widthFactor: 0.9,
          heightFactor: 0.9,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: _mainAlign,
                crossAxisAlignment: _crossAlign,
                children: [
                  Padding(
                      padding: EdgeInsets.all(padding(context)),
                      child: const Text(
                        'Call Me... Maybe?',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.all(padding(context)),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentPrediction =
                                  predictorData.pickPrediction();
                            });
                          },
                          child: const Text(
                              'Ask a question... tap for the answer.',
                              style: TextStyle(
                                  fontSize: 18, fontStyle: FontStyle.italic)))),
                  Padding(
                      padding: EdgeInsets.all(padding(context)),
                      child: Text(
                        currentPrediction,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          ));
    } else {
      return FractionallySizedBox(
          widthFactor: 0.9,
          heightFactor: 0.9,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: _mainAlign,
                crossAxisAlignment: _crossAlign,
                children: [
                  Column(children: [
                    Padding(
                        padding: EdgeInsets.all(padding(context)),
                        child: const Text(
                          'Call Me... Maybe?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.all(padding(context)),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentPrediction =
                                    predictorData.pickPrediction();
                              });
                            },
                            child: const Text(
                                'Ask a question... tap for the answer.',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic))))
                  ]),
                  Padding(
                      padding: EdgeInsets.all(padding(context)),
                      child: SizedBox(
                        height: 250,
                        width: 200,
                        child: Text(
                        currentPrediction,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))),
                ],
              ),
            ),
          ));
    }
    ;
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
