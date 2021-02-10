import 'dart:math';

class PredictorData {
  final Random random = Random();
  final numberOfPredictions = 8;
  int currentIndex = 0;
  final List<String> predictions = [
    'If you wish upon a star...',
    'Yeah right!',
    'Your future is looking bright.',
    'It seems to be a sure thing.',
    'You have a better chance of waking up on the moon.',
    'The chances are grim...',
    'Tough to say, why not ask again?',
    'I like those odds!'
  ];

  String pickPrediction() {
    currentIndex = random.nextInt(numberOfPredictions);
    return predictions[currentIndex];
  }
}
