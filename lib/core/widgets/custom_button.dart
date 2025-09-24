import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double customFontSize;
  final double? width;
  final double? height;

  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.customFontSize,
    this.width,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width, // null → adapts to text
        height: height, // null → uses padding
        padding: height == null
            ? const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ) // ✅ more breathing space
            : null,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15), // ✅ semi-transparent
          borderRadius: BorderRadius.circular(20), // ✅ softer pill shape
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(
              color: AppColors.white,
              fontFamily: 'Raleway',
              fontSize: customFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
