import 'package:flutter/material.dart';

class ClassificationCircle extends StatelessWidget {
  const ClassificationCircle({required this.circleColor, super.key});
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: circleColor,
          width: 2.0,
        ),
      ),
    );
  }
}
