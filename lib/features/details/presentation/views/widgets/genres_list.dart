import 'package:clean_arch_task/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GenresList extends StatelessWidget {
  const GenresList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: 'Dark Fantasy',
          customFontSize: 11,
          width: 97,
          height: 35,
        ),
        const SizedBox(width: 12),
        CustomButton(
          text: 'Action',
          customFontSize: 13,
          width: 82.128,
          height: 35.374,
        ),
        const SizedBox(width: 12),
        CustomButton(
          text: 'Adventure',
          customFontSize: 13,
          width: 92,
          height: 35,
        ),
      ],
    );
  }
}
