import 'dart:math';

import 'package:flutter/material.dart';

class Calculation {
  Calculation({
    required this.weight,
    required this.height,
  });
  final double weight;
  final double height;

  double _imc = 0;

  String result() {
    _imc = weight / pow(height, 2);
    return _imc.toStringAsFixed(1);
  }

  String getText() {
    if (_imc < 18.5) {
      return 'MAGREZA';
    } else if (_imc <= 25) {
      return 'NORMAL';
    } else if (_imc <= 30) {
      return 'SOBREPRESO';
    } else if (_imc <= 35) {
      return 'OBESIDADE GRAU I';
    } else if (_imc <= 40) {
      return 'OBESIDADE GRAU II';
    } else {
      return 'OBESIDADE GRAU III';
    }
  }

  Color getCircleColor() {
    if (_imc >= 30) {
      return Colors.red;
    } else if (_imc >= 18.5 && _imc < 25) {
      return Colors.green;
    } else {
      return Colors.yellow;
    }
  }
}
