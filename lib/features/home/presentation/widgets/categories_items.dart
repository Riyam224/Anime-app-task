// ignore_for_file: use_key_in_widget_constructors

import 'package:clean_arch_task/core/theming/app_styles';
import 'package:flutter/material.dart';

class CategoriesItems extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
    "Top Rated",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 4),
        itemBuilder: (context, index) {
          final category = categories[index];
          final bool isSelected = index == 0; // example: first selected

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: ShapeDecoration(
              color: isSelected ? const Color(0xFF5436F8) : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                // side: BorderSide(color: const Color(0xFF5436F8), width: 1.5),
              ),
            ),
            child: Text(
              category,
              style: AppTextStyles.ralewayRegular14.copyWith(
                color: isSelected ? Colors.white : const Color(0xFF5436F8),
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        },
      ),
    );
  }
}
