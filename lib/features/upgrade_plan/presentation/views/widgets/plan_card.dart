import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/theming/app_styles';
import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.planTitle,
    required this.planSubsMoney,
    required this.planSubsDuration,
    required this.isSelected,
    required this.onTap,
  });

  final String planTitle;
  final String planSubsMoney;
  final String planSubsDuration;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.cardTitle : AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 108,
                  height: 108,
                  child: Image.asset('assets/images/plan.png'),
                ),
                const SizedBox(width: 22),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 132,
                      child: Text(
                        planTitle,
                        style: AppTextStyles.ralewaySemiBold16.copyWith(
                          fontWeight: FontWeight.w700,
                          color: isSelected
                              ? AppColors.white
                              : AppColors.cardTitle,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          planSubsMoney,
                          style: AppTextStyles.ralewayRegular14.copyWith(
                            color: isSelected
                                ? AppColors.white
                                : AppColors.cardTitle,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          planSubsDuration,
                          style: AppTextStyles.ralewayRegular14.copyWith(
                            color: AppColors.textPlan,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      child: Text(
                        'Include Family Sharing',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.ralewayMedium12.copyWith(
                          color: AppColors.textPlan,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 28),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 2,
                    bottom: 50,
                    right: 14,
                    left: 20,
                  ),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected ? AppColors.primary : AppColors.white,
                      border: isSelected
                          ? null
                          : Border.all(color: AppColors.cardTitle),
                    ),
                    child: Icon(
                      Icons.check,
                      size: 16,
                      color: isSelected ? Colors.black : Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
