import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  int height;
  int weight;
  double? _bmi;
  CalculatorBrain({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBmiValue() {
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi! > 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getDescription() {
    if (_bmi! > 25) {
      return 'Follow a proper diet plan and exercise more';
    } else if (_bmi! > 18) {
      return 'You have a healthy body! Just maintain it ';
    } else {
      return 'You can eat bit more ';
    }
  }

  Color getResultColor() {
    if (_bmi! > 25) {
      return Colors.orange;
    } else if (_bmi! > 18) {
      return Colors.green;
    } else {
      return Colors.orange;
    }
  }
}
