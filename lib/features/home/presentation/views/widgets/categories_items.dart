// ignore_for_file: use_key_in_widget_constructors

import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/theming/app_styles';
import 'package:flutter/material.dart';

class CategoriesItems extends StatefulWidget {
  @override
  State<CategoriesItems> createState() => _CategoriesItemsState();
}

class _CategoriesItemsState extends State<CategoriesItems> {
  final List<String> categories = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
    "Top Rated",
  ];

  int selectedIndex = 0; // default first selected

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
          final bool isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // update selection
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: isSelected ? AppColors.primary : AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                category,
                style: AppTextStyles.ralewayRegular14.copyWith(
                  color: isSelected ? AppColors.white : AppColors.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
