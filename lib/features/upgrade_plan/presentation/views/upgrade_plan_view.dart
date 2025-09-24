import 'package:clean_arch_task/core/theming/app_colors.dart';
import 'package:clean_arch_task/core/theming/app_styles';
import 'package:clean_arch_task/features/upgrade_plan/presentation/views/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpgradePlanView extends StatefulWidget {
  const UpgradePlanView({super.key});

  @override
  State<UpgradePlanView> createState() => _UpgradePlanViewState();
}

class _UpgradePlanViewState extends State<UpgradePlanView> {
  String selectedPlan = "Monthly"; // default selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.accent2, Colors.white],
                    ),
                  ),
                ),
                Positioned(
                  top: -63,
                  left: -120,
                  child: SvgPicture.asset(
                    'assets/images/star2.svg',
                    width: 388,
                    height: 350,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 25,
                  child: Column(
                    children: [
                      const SizedBox(height: 67.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 100),
                            child: Text(
                              'Upgrade Plan',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff18153F),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 32, left: 66),
                            child: Image.asset(
                              'assets/images/cross.png',
                              width: 27,
                              height: 27,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 9.5),
                      SizedBox(
                        width: 207,
                        height: 207,
                        child: Image.asset('assets/images/rocket.png'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  right: -150,
                  child: SvgPicture.asset(
                    'assets/images/star3.svg',
                    width: 289,
                    height: 289,
                  ),
                ),
                Positioned(
                  top: 350,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Seamless Anime\n Experience, Ad-Free.',
                        style: AppTextStyles.ralewayBold24.copyWith(
                          color: AppColors.cardTitle,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Enjoy unlimited anime streaming without\n interruptions.',
                        style: AppTextStyles.ralewayRegular14.copyWith(
                          color: AppColors.gray100,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 36),
                      PlanCard(
                        planTitle: 'Monthly',
                        planSubsMoney: '\$5 USD ',
                        planSubsDuration: '/Month',
                        isSelected: selectedPlan == "Monthly",
                        onTap: () {
                          setState(() => selectedPlan = "Monthly");
                        },
                      ),
                      const SizedBox(height: 16),
                      PlanCard(
                        planTitle: 'Annually',
                        planSubsMoney: '\$50 USD ',
                        planSubsDuration: '/Year',
                        isSelected: selectedPlan == "Annually",
                        onTap: () {
                          setState(() => selectedPlan = "Annually");
                        },
                      ),
                      const SizedBox(height: 34),
                      Container(
                        width: 343,
                        height: 46,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
