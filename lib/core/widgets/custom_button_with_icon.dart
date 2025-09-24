import 'package:clean_arch_task/core/utils/styling/app_styles';
import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
    required this.title,
    required this.btnColor,
    required this.image,
  });
  final String title;
  final Color btnColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 44.39,
      decoration: ShapeDecoration(
        color: btnColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 22.843, height: 22.843),
          const SizedBox(width: 8.3),
          Text(
            title,
            style: AppTextStyles.ralewayRegular14.copyWith(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 8.3),
        ],
      ),
    );
  }
}
