import 'package:flutter/material.dart';

class GradientColor extends StatelessWidget {
  final Color color1;
  final Color color2;

  GradientColor(this.color1, this.color2);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
