import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: const Color(0x7A747272),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
    );
  }
}
