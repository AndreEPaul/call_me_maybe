import 'package:flutter/material.dart';

import '../models/predictor_data.dart';

class Predictor extends StatelessWidget {
  final predictorData = PredictorData();

  @override
  Widget build(BuildContext context) {
    return Text(predictorData.pickPrediction());
  }
}
