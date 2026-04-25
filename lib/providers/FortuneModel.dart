import 'dart:math';
import 'package:flutter/material.dart';

class FortuneModel with ChangeNotifier {
  String _currentFortune = "";

  final List<String> _fortuneList = [
    "You will find a new friend",
    "You will have a great day",
    "You will receive good news",
    "You will achieve your goals",
    "You will have a pleasant surprise",
    "You will meet someone special",
    "You will have a lucky day",
  ];

  String get currentFortune => _currentFortune;

  FortuneModel() {
    _generateFortune();
  }

  void _generateFortune() {
    final random = Random();
    final index = random.nextInt(_fortuneList.length);

    _currentFortune = _fortuneList[index];
    notifyListeners();
  }

  void getNewFortune() {
    _generateFortune();
  }
}
