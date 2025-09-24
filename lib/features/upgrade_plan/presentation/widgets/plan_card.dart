import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/utils/styling/app_styles';
import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.planTitle,
    required this.planSubsMoney,
    required this.planSubsDuration,
    required this.checkIconPlan,
    required this.cardColor,
    required this.planTitleColor,
    required this.planSubsMoneyColor,
  });
  final Color cardColor;
  final String planTitle;
  final String planSubsMoney;
  final String planSubsDuration;
  final Widget checkIconPlan;
  final Color planTitleColor;
  final Color planSubsMoneyColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
          color: cardColor,

          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo image
              SizedBox(
                width: 108,
                height: 108,
                child: Image.asset('assets/images/plan.png'),
              ),
              SizedBox(width: 22),
              // todo col.
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
                        color: planTitleColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        planSubsMoney,

                        style: AppTextStyles.ralewayRegular14.copyWith(
                          color: planTitleColor,
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
                  SizedBox(height: 8),
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
              SizedBox(width: 28),
              Padding(
                padding: const EdgeInsets.only(
                  top: 2,
                  bottom: 50,
                  right: 14,
                  left: 20,
                ),
                child: checkIconPlan, // tweak to match exactly
              ),
            ],
          ),
        ),
      ),
    );
  }
}
