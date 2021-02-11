import 'package:flutter/material.dart';

import '../models/predictor_data.dart';

class Predictor extends StatefulWidget {
  @override
  _PredictState createState() => _PredictState();
}

class _PredictState extends State<Predictor> {
  static final predictorData = PredictorData();
  final _padding = const EdgeInsets.all(10);
  final _mainAlign = MainAxisAlignment.center;
  final _crossAlign = CrossAxisAlignment.center;
  String currentPrediction = predictorData.pickPrediction();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: _mainAlign,
          crossAxisAlignment: _crossAlign,
          children: [
            Padding(
                padding: _padding,
                child: const Text(
                  'Call Me... Maybe?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: _padding,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPrediction = predictorData.pickPrediction();
                      });
                    },
                    child: const Text('Ask a question... tap for the answer.',
                        style: TextStyle(
                            fontSize: 18, fontStyle: FontStyle.italic)))),
            Padding(
                padding: _padding,
                child: Text(
                  currentPrediction,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
